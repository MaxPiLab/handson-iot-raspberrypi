//
//  LoginViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 4/22/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit
import Google
import GoogleSignIn
import SafariServices

class LoginViewController: UIViewController , GIDSignInUIDelegate, GIDSignInDelegate, SFSafariViewControllerDelegate {
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var signOut: UIButton!
    
    @IBOutlet var launchButton: UIButton!
    
    
    @IBOutlet var signinMessage: UILabel!
    let signInButton =  GIDSignInButton()
    let contorllername = "loginViewController"
    @IBAction func signoutTapped(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        GIDSignIn.sharedInstance().disconnect()
        let logoutUrl = URL(string: "https://www.google.com/accounts/Logout")!
        let logoutViewController = SFSafariViewController.init(url: logoutUrl)
        logoutViewController.delegate = self
        self.present(logoutViewController, animated: true, completion: nil)
        welcomeLabel.isHidden=true
        signOut.isHidden=true
        launchButton.isHidden=true
        signInButton.isHidden=false
    }
    @IBAction func launchApp(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        signinMessage.text = "SIGN IN WITH GOOGLE TO ACCESS DEVICES"
        
        launchButton.isHidden = true
        signOut.isHidden = true
        welcomeLabel.isHidden = true
        //error object
        var error : NSError?
        
        //setting the error
        GGLContext.sharedInstance().configureWithError(&error)
        checkConnectivity()
        
        //if any error stop execution and print error
        if error != nil{
            print(error ?? "google error")
            return
        }
        
        
        //adding the delegates
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self as GIDSignInDelegate
        
    
        
         // Adding signin button  to view
        
        signInButton.center=view.center
        view.addSubview(signInButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
      checkConnectivity()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkConnectivity()
      
    }
    
    func checkConnectivity()
    {
        NetworkManager.isUnreachable { _ in
       // if  NetworkManager.sharedInstance.reachability.connection == .none {
    
            print("Internet connection FAILED")
            let alert = UIAlertController(title: "No Internet Connection", message: "Make sure your device connected to the internet", preferredStyle: .alert)
    
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            self.view.isUserInteractionEnabled = false
        }
        
    }
    
    
        func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
            
            //if any error stop and print the error
            if error != nil{
                print(error ?? "google error")
                return
            }
            
            signInButton.isHidden=true
            welcomeLabel.isHidden=false
            signOut.isHidden=false
            launchButton.isHidden=false
            welcomeLabel.text="Welcome \(user.profile.name!)"
            welcomeLabel.numberOfLines = 2
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func safariViewController(_ controller: SFSafariViewController, didCompleteInitialLoad didLoadSuccessfully: Bool) {
        controller.dismiss(animated: false) {
            //Switch view controllers
        }
    }
    
   /* private func showOfflinePage() -> Void {
        DispatchQueue.main.async {
            let secondViewController = self.storyboard?.instantiateViewController(withIdentifier:  "OfflineViewController")
            
            self.navigationController?.pushViewController(secondViewController!, animated: true)
        }
    }*/

}
