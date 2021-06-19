//
//  LoginViewController.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        NotificationCenter.default.addObserver(self,
                                                   selector: #selector(userDidSignInGoogle(_:)),
                                                   name: .signInGoogleCompleted,
                                                   object: nil)
    }
    
    @objc private func userDidSignInGoogle(_ notification: Notification) {
        // Update screen after user successfully signed in
        DatabaseManager.shared.changeUid { success in
            if success {
                self.updateScreen()
            }
        }
    }
    
    private func updateScreen() {
            performSegue(withIdentifier: "loginToMain", sender: self)
    }
}
