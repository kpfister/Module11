//
//  Timer.swift
//  PowerNapTimer
//
//  Created by James Pacheco on 4/12/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import UIKit

class Timer: NSObject {
    
    var timeRemaining: NSTimeInterval?// This is optional so it doesnt start unless the timer is started.
    
    var isOn: Bool { // This is a computed property
        if timeRemaining != nil {
            return true // if time remaining is not equal to zer0 - its on
        } else {
            return false
        }
    }
    
    func timeAsString() -> String {
        let timeRemaining = Int(self.timeRemaining ?? 20*60) // ?? is nil coelsent. 20*60 is 20 mins.
        let minutesLeft = timeRemaining / 60 //timeRemaining is in secs, so we devide by 60 to see min
        let secondsLeft = timeRemaining - (minutesLeft*60) //This allows us to calulate the number of seonds
        return String(format: "%02d : %02d", arguments: [minutesLeft, secondsLeft])
    }      // ^ this String is formating the clock to show our values.

    @objc private func secondTick() { // everySecond this method is called
        guard let timeRemaining = timeRemaining else {return} // checks if there is time remaining
        if timeRemaining > 0 { // if timer is greater than zero then we can decrease the timer
            self.timeRemaining = timeRemaining - 1 // decreaseing the timer by 1 sec
            performSelector(#selector(Timer.secondTick), withObject: nil, afterDelay: 1)
            // ^ this is from Objective C. Selector is where we call this method
            NSNotificationCenter.defaultCenter().postNotificationName("secondTick", object: nil)
        } else {
            self.timeRemaining = nil // If the timer is 0 set the time remaining to Nil
            NSNotificationCenter.defaultCenter().postNotificationName("timerCompleted", object: nil)
        }
    }
    
    func startTimer(time: NSTimeInterval) {
        if !isOn {
            timeRemaining = time
            performSelector(#selector(Timer.secondTick), withObject: nil, afterDelay: 1)
        }
    }
    
    func stopTimer() {
        if isOn {
            timeRemaining = nil
            NSNotificationCenter.defaultCenter().postNotificationName("timerStopped", object: nil)
        }
    }
}
