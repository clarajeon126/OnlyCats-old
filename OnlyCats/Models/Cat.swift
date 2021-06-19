//
//  Cat.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/19/21.
//

import Foundation
import UIKit

public class Cat {
    
    var name: String
    var description: String
    var interest: String
    var mainImage: UIImage
    var cuteCatPics: [UIImage]
    var feetPics: [UIImage]
    var cuteCatVids: [URL]
    
    init(name: String, description: String, interest: String, mainImage: UIImage, cuteCatPics: [UIImage], feetPics: [UIImage], cuteCatVids: [URL]){
        self.name = name
        self.description = description
        self.interest = interest
        self.mainImage = mainImage
        self.cuteCatPics = cuteCatPics
        self.feetPics = feetPics
        self.cuteCatVids = cuteCatVids
    }
    
    /*static func parse(data:[String: Any], completion: @escaping (_ cat: Cat) -> ()) {
        if let name = data["name"] as? String,
           let description = data["description"] as? String,
           let interest = data["interest"] as? String,
           let mainImageString = data["mainImage"] as? String,
           let name = data["name"] as? String,
           let name = data["name"] as? String,
           let name = data["name"] as? String,
    }*/
}
