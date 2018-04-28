//
//  AppDelegate.swift
//  DeviceControl
//
//  Created by Sundaram R on 4/15/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit
import PubNub
import Google
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    var client_led, client_sensor: PubNub
    var config_led, config_sensor: PNConfiguration
    
    var led_pubkey = "pub-c-7d635ffa-d57a-47f2-b400-817dd3816e6d"
    var led_subkey = "sub-c-bcc1aed0-36eb-11e8-a218-f214888d2de6"
    var sensor_pubkey = "pub-c-9710b97d-1b82-4e19-8508-ef27b1bf9fde"
    var sensor_subkey = "sub-c-18528260-3ca5-11e8-a433-9e6b275e7b64"

    override init()
    {
        config_led = PNConfiguration(publishKey: led_pubkey, subscribeKey: led_subkey)
        client_led = PubNub.clientWithConfiguration(config_led)
        
        
        config_sensor = PNConfiguration(publishKey: sensor_pubkey, subscribeKey: sensor_subkey)
        client_sensor = PubNub.clientWithConfiguration(config_sensor)
        
        super.init()
        
        
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url as URL!,
                                                 sourceApplication: options[UIApplicationOpenURLOptionsKey.sourceApplication] as? String, annotation: options[UIApplicationOpenURLOptionsKey.annotation])
    }
    func client(_ client: PubNub, didReceiveMessage message: PNMessageResult) {
        
        print("Received message: \(message.data.message) on channel \(message.data.channel) " +
            "at \(message.data.timetoken)")
        
    }
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
       
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

