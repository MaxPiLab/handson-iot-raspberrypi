//
//  LedViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 4/15/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit
import PubNub
class LedViewController: UIViewController, PNObjectEventListener {
let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
    
    
    @IBOutlet var ledON: UIButton!
    @IBOutlet var ledOFF: UIButton!
    
    var pubkey = String()
    var subkey = String()
    var channel_Name = String()
    
    
    
    @IBAction func lightOn(_ sender: UIButton) {
        print("Led :\(channel_Name)")
        appDelegate.client?.publish(["light" : "on"], toChannel: channel_Name, withCompletion: nil)
       
    }
    
    @IBAction func lightOff(_ sender: UIButton) {
        appDelegate.client?.publish(["light" : "off"], toChannel: channel_Name, withCompletion: nil)
       
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        configureChannel()
        // Do any additional setup after loading the view.
    }

    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
     
     print("Received message: \(String(describing: message.data.message)) on channel \(message.data.channel) " +
     "at \(message.data.timetoken)")
     
     }
    
    
    func client(_ client: PubNub, didReceive status: PNStatus) {
     
     print("STATUS: \(status.category)")
     if (status.category == PNStatusCategory.PNUnexpectedDisconnectCategory) {
     
     print("WRONG KEYS/CHANNEL")
     
     }
     
     
     
     let errorStatus: PNErrorStatus = status as! PNErrorStatus
     if errorStatus.category == .PNAccessDeniedCategory {
     
     /**
     This means that PAM does allow this client to subscribe to this channel and channel group
     configuration. This is another explicit error.
     */
     }
     else {
     
     /**
     More errors can be directly specified by creating explicit cases for other error categories
     of `PNStatusCategory` such as: `PNDecryptionErrorCategory`,
     `PNMalformedFilterExpressionCategory`, `PNMalformedResponseCategory`, `PNTimeoutCategory`
     or `PNNetworkIssuesCategory`
     */
     }
     
     }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
