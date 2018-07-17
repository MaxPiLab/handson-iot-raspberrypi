//
//  pubnubViewController.swift
//  DeviceControl
//


import UIKit

class pubnubViewController: UIViewController {
   
    
    @IBOutlet var pubnubInfo: UILabel!
    @IBOutlet var configureKeys: UIButton!
    @IBOutlet var pubKey: UITextField!
    @IBOutlet var subKey: UITextField!
    @IBOutlet var channel: UITextField!
    @IBOutlet var devicename: UITextField!
    @IBOutlet var save: UIButton!
    let userDefault = UserDefaults.standard
    let  limitlength = 50
    
    
    @IBAction func configurePressed(_ sender: UIButton) {
    }
    
    @IBAction func savedetails(_ sender: UIButton)
    {
        
        if( pubKey.text?.isEmpty == true ||  subKey.text?.isEmpty == true  ||  channel.text?.isEmpty == true || devicename.text?.isEmpty == true){
            
            save.isUserInteractionEnabled = false
          
        }
        else
        {
          
            print("Pubkey:\(String(describing: pubKey.text))")
            print("Subkey:\(String(describing: subKey.text))")
            print("Channel:\(String(describing: channel.text))")
            print("Device:\(String(describing: devicename.text))")
            save.isUserInteractionEnabled = true
            
            if( devicename.text == "LED"){
                userDefault.setValue(pubKey.text, forKey: "ledpubkey")
                userDefault.setValue(subKey.text, forKey: "ledsubkey")
                userDefault.setValue(channel.text, forKey: "ledchannelname")
               
            }
            else if( devicename.text == "SENSOR"){
                userDefault.setValue(pubKey.text, forKey: "sensorpubkey")
                userDefault.setValue(subKey.text, forKey: "sensorsubkey")
                userDefault.setValue(channel.text, forKey: "sensorchannelname")
            }else{
                print("Invalid Device Name")
                let alert = UIAlertController(title: "Invalid Device Name", message: "Devices can be LED or SENSOR", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        
        
        }
       
       cleantextFields()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefault.removePersistentDomain(forName: Bundle.main.bundleIdentifier!)
        userDefault.synchronize()
        pubnubInfo.text = "If You have the keys and channel name please enter them in below text box ,else Press the below button to configure  PUBNUB Keys using PUBNUB admin link for LED AND SENSOR devices."
        pubnubInfo.adjustsFontSizeToFitWidth = true
        pubnubInfo.numberOfLines = 3
        
      
        pubKey.delegate = self
        subKey.delegate = self
        channel.delegate = self
        devicename.delegate = self
      
        
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
    devicename.text = ""
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
