//
//  CreateAlarmView.swift
//  AlarmClock
//
//  Created by Joseph on 04/03/2025.
//

import SwiftUI

struct CreateAlarmView: View {
    
    @Binding var path: [String]
    @Binding var alarmList: [AlarmDate]

    @State private var alarmTime = Date.now

    var body: some View {
        
        Text("\(AlarmDate(date: alarmTime).getFormattedDate()) \(AlarmDate(date: alarmTime).getFormattedTime())")
        
        DatePicker("Please enter a date", selection: $alarmTime)

        Button("Back") {
            path.removeAll()
            alarmList.append(AlarmDate(date: alarmTime))
        }
    }
}

#Preview {
    CreateAlarmView(path: .constant([]), alarmList: .constant([]))
}
