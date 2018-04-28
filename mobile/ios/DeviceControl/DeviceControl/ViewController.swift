//
//  ViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 4/15/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit
import PubNub

class ViewController: UIViewController ,PNObjectEventListener{
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
    @IBAction func ledControlClicked(_ sender: UIButton) {
       appDelegate.client_led.subscribeToChannels(["LedControl"], withPresence: false)
       appDelegate.client_led.addListener(self)
        appDelegate.client_led.unsubscribeFromChannels(["LedContol"], withPresence: false)
        
    }
    @IBAction func rangeFinderClicked(_ sender: UIButton) {
        appDelegate.client_sensor.subscribeToChannels(["Rangefinder"], withPresence: false)
        appDelegate.client_led.addListener(self)
        appDelegate.client_sensor.unsubscribeFromChannels(["Rangefinder"], withPresence: false)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
     
     print("Received message: \(message.data.message) on channel \(message.data.channel) " +
     "at \(message.data.timetoken)")
     
     }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

