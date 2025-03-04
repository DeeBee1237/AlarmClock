//
//  AlarmDate.swift
//  AlarmClock
//
//  Created by Joseph on 04/03/2025.
//

import Foundation

struct AlarmDate : Identifiable {
    
    var id = UUID() // for now, I can use something that may make more sense here, later on
    var date: Date
    
    func getFormattedTime() -> String {
        return date.formatted(date: .omitted, time: .shortened)
    }
    
    func getFormattedDate() -> String {
        return date.formatted(date: .long, time: .omitted)
    }
        
}
