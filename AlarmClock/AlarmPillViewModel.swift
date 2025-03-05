//
//  AlarmPillViewModel.swift
//  AlarmClock
//
//  Created by Joseph on 05/03/2025.
//

import Foundation

class AlarmPillViewModel {
    
    var alarmObject: AlarmDate
    var timer: Timer? = nil
    
    init(alarmObject: AlarmDate) {
        self.alarmObject = alarmObject
    }
    
    func setAlarm() {
        
        self.timer = Timer.init(fire: alarmObject.date, interval: 0, repeats: false) { [weak self] timer in
            self?.alarmAction()
        }
        
        RunLoop.main.add(timer!, forMode: .common) // TODO: I do not like force unwrapping
    }
    
    func removeAlarm() {
        // TODO: is this safe/ the best thing to do ? All these new timer instances are added
        // TODO: the run loop so then do they need to be removed or is setting the timer to nil enough ?
        self.timer?.invalidate()
        self.timer = nil
    }
    
    func alarmAction() {
        // TODO: need to play an alarm tune and bring up a dismiss screen
        for i in 0..<20 {
            print("THE ALARM HAS BEEN SET OFF ! FOR DATE : \(alarmObject.getFormattedTime())")
        }
    }
    
}
