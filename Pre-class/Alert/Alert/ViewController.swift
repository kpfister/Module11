//
//  ViewController.swift
//  Alert
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
    
    override func viewDidAppear(animated: Bool) {
        
        
        let alertController = UIAlertController(title: "Alert!", message: "This is an alert!", preferredStyle: .Alert)
        
        let destructiveAction = UIAlertAction(title: "Warning!", style: .Destructive) { alert -> Void in
            print("Something Blew up!")
        }
        
        let defaultAction = UIAlertAction(title: "Cancel", style: .Cancel) {
            alert -> Void in
            print("Boring.")
        }
        
        let okAction = UIAlertAction(title: "Ok", style: .Default) { action -> Void in
            print("Okay!")
        }
        
        alertController.addAction(destructiveAction)
        alertController.addAction(defaultAction) // When you add default - it places it on the bottom. ( ofthe alert box)
        
        alertController.addAction(okAction)

        self.presentViewController(alertController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

