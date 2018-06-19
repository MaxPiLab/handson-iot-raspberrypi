//
//  pubnubViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 5/6/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit

class pubnubViewController: UIViewController {
    var deviceID = String()
    
    @IBOutlet var pubnubInfo: UILabel!
    @IBOutlet var configureKeys: UIButton!
    @IBOutlet var pubKey: UITextField!
    @IBOutlet var subKey: UITextField!
    @IBOutlet var channel: UITextField!
    @IBOutlet var go: UIButton!
    let  limitlength = 50
    
    var identifier = String()
    @IBAction func configurePressed(_ sender: UIButton) {
    }
    @IBAction func connectApp(_ sender: UIButton)
    {
        
        if( pubKey.text?.isEmpty == true ||  subKey.text?.isEmpty == true  ||  channel.text?.isEmpty == true ){
            
            go.isUserInteractionEnabled = false
          
        }
        else
        {
          
            go.isUserInteractionEnabled = true
 
        print("Pubkey:\(String(describing: pubKey.text))")
        print("Subkey:\(String(describing: subKey.text))")
        print("Channel:\(String(describing: channel.text))")
        // Instantiate SecondViewController
            if deviceID == "LED"
            {
                let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "LedViewController") as! LedViewController
                secondViewController.pubkey = pubKey.text!
                secondViewController.subkey = subKey.text!
                secondViewController.channel_Name = channel.text!
                cleantextFields()
                // Take user to SecondViewController
                self.navigationController?.pushViewController(secondViewController, animated: true)
            }
            if deviceID == "SENSOR"
            {
                let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SensorViewController") as! SensorViewController
                secondViewController.pubkey = pubKey.text!
                secondViewController.subkey = subKey.text!
                secondViewController.channel_Name = channel.text!
                cleantextFields()
                // Take user to SecondViewController
                self.navigationController?.pushViewController(secondViewController, animated: true)
            }
            
       
        }
       
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        pubnubInfo.text = "If You have the keys and channel name please enter them in below text box else ,Press the below button to configure  PUBNUB Keys using PUBNUB admin link ."
        pubnubInfo.adjustsFontSizeToFitWidth = true
        pubnubInfo.numberOfLines = 3
        
        /*let linkAttributes: [NSAttributedStringKey: Any] = [
            .link: NSURL(string: "https://dashboard.pubnub.com/login")!,
            .foregroundColor: UIColor.blue
        ]
        
        let attributedString = NSMutableAttributedString(string: "Click here to Configure Pubnub keys")
        
        // Set the 'click here' substring to be the link
        attributedString.setAttributes(linkAttributes, range: NSMakeRange(5, 10))
        
        //self.pubnubLoginlink.delegate = (self as! UITextViewDelegate)
        self.pubnubLoginlink.attributedText = attributedString
        
        self.pubnubLoginlink.isUserInteractionEnabled = true
        self.pubnubLoginlink.isEditable = false
      */
        
      
        pubKey.delegate = self
        subKey.delegate = self
        channel.delegate = self
        
      
        
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
  func cleantextFields()
  {
    pubKey.text = ""
    subKey.text = ""
    channel.text = ""
    
    }
    
   

    
    
}
extension pubnubViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
  
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        if text.isEmpty { return true }
        //let text = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        guard let newtext = textField.text else { return true }
       
        let newlength = newtext.utf16.count + string.utf16.count - range.length
        return newlength <= limitlength
        //return true
 
    }
}
