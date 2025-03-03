//
//  ContentView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var moveToNewView = true

    var body: some View {
        
        VStack {
            alarmClock(time: "9:48 AM", date: "4 Monday 2025")
            alarmClock(time: "9:48 AM", date: "4 Monday 2025")
            alarmClock(time: "9:48 AM", date: "4 Monday 2025")
            alarmClock(time: "9:48 AM", date: "4 Monday 2025")
        }
    }
    
    
    @ViewBuilder func alarmClock(time: String, date: String) -> some View {
        
        ZStack {

            Color.gray

            HStack {
                
                Text(time)
                Text(date)
                Toggle("", isOn: $moveToNewView)
                
            }
        }
        .cornerRadius(16)
        .frame(height: 100)
        .padding([.leading, .trailing], 16)
        
    }
    
}

#Preview {
    ContentView()
}
