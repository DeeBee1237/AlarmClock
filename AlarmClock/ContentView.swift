//
//  ContentView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    // use this for the navigation stack
    @State private var path: [String] = []
    
    // TODO: move this to the view model
    @State private var alarmList: [AlarmDate] = []
    
    var body: some View {
        
        NavigationStack (path: $path) {
            
            VStack {
                
                ScrollView {
                    
                    ForEach(alarmList) { alarmDate in
                        AlarmPillView(model: AlarmPillViewModel(alarmObject: alarmDate))
                    }
                    
                }
                
            }
            .padding([.leading, .trailing], 16)
            .navigationTitle("Alarm")
            .navigationDestination(for: String.self) { pathValue in
                if pathValue == "CreateAlarmView" {
                    CreateAlarmView(path: $path, alarmList: $alarmList)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Alarm") { // TODO: make it an icon instead
                        path.append("CreateAlarmView")
                    }
                }
            }
            
        }
        

    }
    
}

#Preview {
    ContentView()
}
