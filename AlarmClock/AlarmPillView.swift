//
//  AlarmPillView.swift
//  AlarmClock
//
//  Created by Joseph on 03/03/2025.
//

import SwiftUI

struct AlarmPillView: View {
    
    @State private var isAlarmSwitchOn = true
    
    private let model: AlarmPillViewModel
    
    init(model: AlarmPillViewModel) {
        self.model = model
    }
    
    var body: some View {
        
        HStack {

            Text(model.alarmObject.getFormattedTime())
                .padding(.leading, 12)
            
            Spacer()
            
            HStack {
                
                Text(model.alarmObject.getFormattedDate())
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
    AlarmPillView(model: AlarmPillViewModel(alarmObject: AlarmDate(date: Date.now)))
}
