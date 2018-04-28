
//  SensorViewController.swift
//  DeviceControl
//  Copyright © 2018 Maxpi. All rights reserved.

import UIKit
import PubNub

class SensorViewController: UIViewController, PNObjectEventListener{
let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
    
    @IBOutlet var distance: UITextField!
    @IBAction func getDistance(_ sender: UIButton) {
        appDelegate.client_sensor.publish(["getDistance": "on"], toChannel: "Rangefinder", withCompletion: nil)
        //appDelegate.client_sensor.addListener(self)
        appDelegate.client_sensor.subscribeToChannels(["Rangefinder"], withPresence: true)
        appDelegate.client_sensor.addListener(self)
        
        
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
