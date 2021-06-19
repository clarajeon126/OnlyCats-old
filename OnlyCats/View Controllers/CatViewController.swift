//
//  ViewController.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import UIKit
import FirebaseAuth

class CatViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        handleNotAuthenticated()
    }
    
    //handleing not authenticated
    private func handleNotAuthenticated() {
        if Auth.auth().currentUser == nil {
            let startingStoryBoard = UIStoryboard(name: "Starting", bundle: nil)
            let loginVC = startingStoryBoard.instantiateViewController(withIdentifier: "LoginViewController") as UIViewController
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false, completion: nil)
        }
        else{
            print("user uid: \(Auth.auth().currentUser!.uid)")
            
            DatabaseManager.shared.observeUserProfile(Auth.auth().currentUser!.uid) { (userProfile) in
                UserProfile.currentUserProfile = userProfile
                
            }
        }
    }
    
    
}

