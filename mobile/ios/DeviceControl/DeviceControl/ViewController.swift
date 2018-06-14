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
   
   /* var pubkey = String()
    var subkey = String()
    var channel_Name = String()*/
    var selectedDevice = String()
    
    @IBAction func ledControlClicked(_ sender: UIButton) {
         selectedDevice = "LED"
        
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "pubnubViewController") as! pubnubViewController
        secondViewController.deviceID = selectedDevice
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    @IBAction func rangeFinderClicked(_ sender: UIButton) {
         selectedDevice = "SENSOR"
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "pubnubViewController") as! pubnubViewController
        secondViewController.deviceID = selectedDevice
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //configureChannel()
    }

   /* func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
     
        print("Received message: \(String(describing: message.data.message)) on channel \(message.data.channel) " +
     "at \(message.data.timetoken)")
     
     }
    */
    
    /*func client(_ client: PubNub, didReceive status: PNStatus) {
        
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
        
    }*/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 /*   func configureChannel()
    {
        appDelegate.config = PNConfiguration(publishKey: pubkey, subscribeKey: subkey)
        
        appDelegate.client = PubNub.clientWithConfiguration(appDelegate.config!)
        appDelegate.client?.subscribeToChannels([channel_Name], withPresence: false )
        
        appDelegate.client?.addListener(self)
        appDelegate.client?.unsubscribeFromChannels([channel_Name], withPresence: false) 
        
        /*config = PNConfiguration(publishKey: pubkey, subscribeKey: subkey)
        client = PubNub.clientWithConfiguration(config!)
        client?.subscribeToChannels([channel_Name], withPresence: false)
        client?.addListener(self)
        client?.unsubscribeFromChannels([channel_Name], withPresence: false) */
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "ledscreen"
        {
            let destVc = segue.destination as! LedViewController
            destVc.ledChannelname = channel_Name
        
        }
        if segue.identifier == "sensorscreen"
        {
            let destVc = segue.destination as! SensorViewController
            destVc.sensorChannelname = channel_Name
        }
        
    }

    */

}
