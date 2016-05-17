//
//  ViewController.swift
//  ThreeCardMonty2
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

    
    
    override func viewWillAppear(animated: Bool) {
        
        let alertController = UIAlertController(title: "Alert!", message: "Welcome to thre card Monty", preferredStyle: .Alert)
        
    }
    
    let queenAlert = UIAlertAction(title: "Card one.", style: <#T##UIAlertActionStyle#>, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)
}

