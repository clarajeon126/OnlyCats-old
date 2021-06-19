//
//  CatDetailedViewController.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import UIKit

class CatDetailedViewController: UIViewController {

    var cat = Cat()
    @IBOutlet var offerViews: [UIView]!
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayAgeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var interestLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        for x in 0..<offerViews.count {
            offerViews[x].layer.cornerRadius = 15
        }
        
        mainImageView.image = cat.mainImage
        nameLabel.text = cat.name
        birthdayAgeLabel.text = cat.birthdayAge
        descriptionLabel.text = cat.description
        interestLabel.text = "Interest: \(cat.interest)"
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
