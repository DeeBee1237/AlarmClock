//
//  ContentView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            VStack {
                
                ScrollView {
                    
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
                    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")

                }
                
            }
            .padding([.leading, .trailing], 16)
            .navigationTitle("Alarm")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add Alarm") { // TODO: make it an icon instead
                        print("Take user to create alarm screen")
                    }
                }
            }
            
        }
        

    }
    
}

#Preview {
    ContentView()
}
