//
//  ViewController.swift
//  DeviceControl
//


import UIKit
import PubNub

class ViewController: UIViewController ,PNObjectEventListener{
    let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
   
   
    
  
    @IBOutlet var sensorswitch: UISwitch!
    
    @IBOutlet var sensorImage: UIImageView!
    @IBOutlet var ledImage: UIImageView!
    @IBOutlet var ledswitch: UISwitch!
    var pubkey: String!
    var subkey: String!
    var channel_Name: String!
    let userDefault = UserDefaults.standard
    let ledONImage = UIImage (named:"led-lamp-red-on.png")
    let ledOFFImage = UIImage (named:"led-lamp-red-off.png")
    let sensorONImage = UIImage (named:"sensoron.png")
    let sensorOFFImage = UIImage (named:"ultrasonic.png")
    
    @IBAction func ledOnoff(_ sender: UISwitch) {
        pubkey = userDefault.string(forKey: "ledpubkey")
        subkey = userDefault.string(forKey: "ledsubkey")
        channel_Name = userDefault.string(forKey: "ledchannelname")
        if (pubkey != nil && subkey != nil && channel_Name != nil){
            
            configureChannel()
            if sender.isOn {
                appDelegate.client?.publish(["light" : "on"], toChannel: channel_Name, withCompletion: nil)
                ledImage.image = ledONImage
            
            }
            else{
                appDelegate.client?.publish(["light" : "off"], toChannel: channel_Name, withCompletion: nil)
                ledImage.image = ledOFFImage
            }
        }
        else{
            ledswitch.setOn(false, animated: false)
            alertuser()
        }
        
    }
    @IBAction func sensorOnoff(_ sender: UISwitch) {
    
   
        pubkey = userDefault.string(forKey: "sensorpubkey")
        subkey = userDefault.string(forKey: "sensorsubkey")
        channel_Name = userDefault.string(forKey: "sensorchannelname")
        if (pubkey != nil && subkey != nil && channel_Name != nil)
        {
            
        configureChannel()
        if (sender.isOn) {
            sensorImage.image = sensorONImage
        appDelegate.client?.publish(["getDistance": "on"], toChannel: channel_Name, withCompletion: nil)
        
        appDelegate.client?.subscribeToChannels([channel_Name], withPresence: true)
        appDelegate.client?.addListener(self)
        }
        else{
            
                distance.text = ""
                sensorImage.image = sensorOFFImage
            appDelegate.client?.unsubscribeFromChannels([channel_Name], withPresence: false)
        }
        }
        else{
            sensorswitch.setOn(false, animated: false)
            alertuser()
            
        }
    }
    
    @IBOutlet var distance: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
     
        print("Received message: \(String(describing: message.data.message)) on channel \(message.data.channel) " +
     "at \(message.data.timetoken)")
        if (message.data.channel == userDefault.string(forKey: "sensorchannelname") ){
            self.displayMessage(message.data.message as! Dictionary, forChannel: message.data.channel)
        }
     
     }
    
    public func alertuser(){
    
    let alert = UIAlertController(title: "Incomplete PUBNUB configuration", message: "configure pub and sub keys and channel name for the Device", preferredStyle: .alert)
    
    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    self.present(alert, animated: true, completion: nil)
    }
    
    public func displayMessage(_ message: Dictionary<String, Any>, forChannel channelName: String) {
        let Dist = message["Distance"] as Any
        distance.text = Dist as? String
    }
    
        func client(_ client: PubNub, didReceive status: PNStatus) {
       
        if (status.category == PNStatusCategory.PNUnexpectedDisconnectCategory) {
            
            let alert = UIAlertController(title: "Invalid PUBNUB configuration", message: "configure pub and sub keys and channel name for the Device", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }
        
        
                
                let errorStatus: PNErrorStatus = status as! PNErrorStatus
                if errorStatus.category == .PNAccessDeniedCategory {
                    
                    let alert = UIAlertController(title: "Invalid PUBNUB configuration", message: "configure pub and sub keys and channel name for the Device", preferredStyle: .alert)
                    
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
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
    
    public func configureChannel()
    {
       
        appDelegate.config = PNConfiguration(publishKey: pubkey, subscribeKey: subkey)
        
        appDelegate.client = PubNub.clientWithConfiguration(appDelegate.config!)
        appDelegate.client?.subscribeToChannels([channel_Name], withPresence: false )
        
        appDelegate.client?.addListener(self)
        appDelegate.client?.unsubscribeFromChannels([channel_Name], withPresence: false) 
        
     
        
    }
    
   

}
