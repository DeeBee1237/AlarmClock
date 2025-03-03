//
//  ContentView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
            AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
            AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
            AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
            
        }
        .padding([.leading, .trailing], 16)

    }
    
}

#Preview {
    ContentView()
}
