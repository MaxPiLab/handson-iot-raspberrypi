
//  SensorViewController.swift
//  DeviceControl
//  Copyright © 2018 Maxpi. All rights reserved.

import UIKit
import PubNub

class SensorViewController: UIViewController, PNObjectEventListener{
let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
    
    @IBOutlet var distance: UITextField!
    
    var pubkey = String()
    var subkey = String()
    var channel_Name = String()
    
    @IBAction func getDistance(_ sender: UIButton) {
        print("Sensor :\(channel_Name)")
        appDelegate.client?.publish(["getDistance": "on"], toChannel: channel_Name, withCompletion: nil)
        
        appDelegate.client?.subscribeToChannels([channel_Name], withPresence: true)
        appDelegate.client?.addListener(self)
        
        
    }
    
    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
        
        self.displayMessage(message.data.message as! Dictionary, forChannel: message.data.channel)
    }
    public func displayMessage(_ message: Dictionary<String, Any>, forChannel channelName: String) {
        let Dist = message["Distance"] as Any
        distance.text = Dist as? String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureChannel()
        
    }

    func configureChannel()
    {
        appDelegate.config = PNConfiguration(publishKey: pubkey, subscribeKey: subkey)
        
        appDelegate.client = PubNub.clientWithConfiguration(appDelegate.config!)
        appDelegate.client?.subscribeToChannels([channel_Name], withPresence: false )
        
        appDelegate.client?.addListener(self)
        appDelegate.client?.unsubscribeFromChannels([channel_Name], withPresence: false)
        
       
    }
}
