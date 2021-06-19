//
//  SettingViewController.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import UIKit

class SettingViewController: UIViewController {

    @IBAction func signoutTapped(_ sender: Any) {
        AuthManager.shared.logOut { success in
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
