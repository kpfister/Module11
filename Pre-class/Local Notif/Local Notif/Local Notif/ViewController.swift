//
//  ViewController.swift
//  Local Notif
//
//  Created by Karl Pfister on 5/17/16.
//  Copyright © 2016 Karl Pfister. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func notifyMe(sender: AnyObject) {
        let notif = UILocalNotification()
        notif.alertBody = "Body"
        notif.alertTitle = "Title"
        notif.fireDate = NSDate().dateByAddingTimeInterval(5) // NSDATE is now, and the time interval (5) makes it 5 seconds from launch
        UIApplication.sharedApplication().scheduleLocalNotification(notif)
    }

}

