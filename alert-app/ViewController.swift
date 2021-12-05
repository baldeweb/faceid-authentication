//
//  ViewController.swift
//  alert-app
//
//  Created by Wallace Baldenebre on 19/06/21.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {
    var context = LAContext()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        context.localizedCancelTitle = "Enter Username/Password"
        let reason = "Log in to your account"
        context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: reason ) { success, error in
            if success {
                print("deu bom")
            } else {
                print(error?.localizedDescription ?? "Failed to authenticate")
            }
        }
    }
}
