//
//  ViewController.swift
//  PowerNapTimer
//
//  Created by James Pacheco on 4/12/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TimerDelegate {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    let timer = Timer()
    private let localNotificationTag = "timerNotification"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer.delegate = self
        setView()
    }
    
    func setView() {
        updateTimerLabel()
        // If timer is running, start button title should say "Cancel". If timer is not running, title should say "Start nap"
        if timer.isOn {
            startButton.setTitle("Cancel", forState: .Normal)
        } else {
            startButton.setTitle("Start nap", forState: .Normal)
        }
    }
    
    func updateTimerLabel() {
        timerLabel.text = timer.timeAsString()
    }
    
    @IBAction func startButtonTapped(sender: AnyObject) {
        if timer.isOn {
            timer.stopTimer()
        } else {
            timer.startTimer(5) // 20*60.0
        }
        setView()
    }
    
    func timerSecondTick() {
        updateTimerLabel()
    }
    
    func timerCompleted() {
        var snoozeTextField: UITextField?
        let alertController = UIAlertController(title: "Wake up!", message: "Bruh, sleep is for the weak", preferredStyle: .Alert)
        alertController.addTextFieldWithConfigurationHandler { (textField) in
            textField.placeholder = "Would you like to sleep more?"
            textField.keyboardType = .NumberPad
        }
        let dismissAction = UIAlertAction(title: "Dismiss", style: .Cancel) { (_) in
            self.setView()
        }
        let snoozeAction = UIAlertAction(title: "Snooze", style: .Default) { (_) in
            guard let timeText = snoozeTextField?.text,
                time = NSTimeInterval(timeText) else {
                    return
            }
            self.timer.startTimer(time*60)
            self.setView()
        }
        alertController.addAction(dismissAction)
        alertController.addAction(snoozeAction)
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func timerStopped() {
        setView()
    }
}

