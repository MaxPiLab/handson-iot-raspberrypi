//
//  webViewController.swift
//  DeviceControl
//
//  Created by Sundaram R on 5/11/18.
//  Copyright © 2018 Maxpi. All rights reserved.
//

import UIKit

class webViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var activity: UIActivityIndicatorView!
    @IBOutlet var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://dashboard.pubnub.com/login")!
        let request =  NSURLRequest(url: url as URL)
        webview.scalesPageToFit = true
        //view.addSubview(webview)
        webview.addSubview(activity)
        webview.scrollView.isScrollEnabled = true
        webview.loadRequest(request as URLRequest)
        webview.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(webview : UIWebView) {
        NSLog("Web page is loading")
        activity.startAnimating()
    }
    func webViewDidFinishLoad(_
        : UIWebView) {
        NSLog("Web Page is loaded")
        
        activity.stopAnimating()
        activity.hidesWhenStopped = true
    }

}
