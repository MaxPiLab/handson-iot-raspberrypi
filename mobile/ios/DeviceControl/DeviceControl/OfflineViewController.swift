//
//  OfflineViewController.swift
//  DeviceControl
//


import UIKit

class OfflineViewController: UIViewController {

    let network = NetworkManager.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        // If the network is reachable show the main controller
        network.reachability.whenReachable = { _ in
            self.showMainController()
            }
    }
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Hide the navigation bar
            navigationController?.setNavigationBarHidden(true, animated: animated)
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
            // Show the navigation bar
            navigationController?.setNavigationBarHidden(false, animated: animated)
        }
        
        private func showMainController() -> Void {
            DispatchQueue.main.async {
                let secondViewController = self.storyboard?.instantiateViewController(withIdentifier:  "loginViewController")
                
                self.navigationController?.pushViewController(secondViewController!, animated: true)
                
                //self.performSegue(withIdentifier: "loginViewController", sender: self)
            }
        }
}
