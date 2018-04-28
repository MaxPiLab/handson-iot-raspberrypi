//
//  LedViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 4/15/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit
import PubNub
class LedViewController: UIViewController {
let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
    
    
    @IBOutlet var ledON: UIButton!
    
    @IBOutlet var ledOFF: UIButton!
    @IBAction func lightOn(_ sender: UIButton) {
        appDelegate.client_led.publish(["light" : "on"], toChannel: "LedControl", withCompletion: nil)
        
    }
    
    @IBAction func lightOff(_ sender: UIButton) {
        appDelegate.client_led.publish(["light" : "off"], toChannel: "LedControl", withCompletion: nil)
       
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
