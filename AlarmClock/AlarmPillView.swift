//
//  AlarmPillView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct AlarmPillView: View {
    
    @State private var isAlarmSwitchOn = true
    
    let time: String
    let date: String
    
    var body: some View {
        
        HStack {

            Text(time)
                .padding(.leading, 12)
            
            Spacer()
            
            HStack {
                
                Text(date)
                Toggle("", isOn: $isAlarmSwitchOn)
                    .labelsHidden()
            }
            .padding(.trailing, 12)

        }
        .frame(height: 100)
        .cornerRadius(16) // TODO: use strokeBorder here instead ?
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray, lineWidth: 2)
        )
        
    }
}

#Preview {
    AlarmPillView(time: "9:48 AM", date: "4 Monday 2025")
}
