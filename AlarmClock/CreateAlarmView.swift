//
//  CreateAlarmView.swift
//  AlarmClock
//
//  Created by Joseph on 04/03/2025.
//

import SwiftUI

struct CreateAlarmView: View {
    
    @Binding var path: [String]
    
    var body: some View {
        
        Text("TODO Create alarm")
        
        Button("Back") {
            path.removeAll()
        }
    }
}

#Preview {
    CreateAlarmView(path: .constant([]))
}
