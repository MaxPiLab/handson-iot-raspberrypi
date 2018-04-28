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


class LoginViewController: UIViewController , GIDSignInUIDelegate, GIDSignInDelegate{
    @IBOutlet var welcomeLabel: UILabel!
    
    @IBOutlet var signOut: UIButton!
    
    @IBOutlet var launchButton: UIButton!
    
    let signInButton =  GIDSignInButton()
    @IBAction func signoutTapped(_ sender: Any) {
        GIDSignIn.sharedInstance().signOut()
        welcomeLabel.isHidden=true
        signOut.isHidden=true
        launchButton.isHidden=true
        signInButton.isHidden=false
    }
    @IBAction func launchApp(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        launchButton.isHidden = true
        signOut.isHidden = true
        welcomeLabel.isHidden = true
        //error object
        var error : NSError?
        
        //setting the error
        GGLContext.sharedInstance().configureWithError(&error)
        
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
            welcomeLabel.text="Welcome \(user.profile.email)"
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
