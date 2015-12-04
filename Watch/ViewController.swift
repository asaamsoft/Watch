//
//  ViewController.swift
//  Watch
//
//  Created by Al Malki on 2/13/1437 AH.
//  Copyright © 1437 ASAAMSOFT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "upadeTime", userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func upadeTime()
    {
        
        let myTime = NSDate()
        
        let format = NSDateFormatter()
        format.dateFormat = "hh:mm:ss a"
        
        self.myLable.text = format.stringFromDate(myTime)
        
        
        
        
    }
    

}

