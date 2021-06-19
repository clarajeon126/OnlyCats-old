//
//  StorageManager.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import Foundation
import UIKit
import FirebaseStorage

public class StorageManager {
    static let shared = StorageManager()
    
    let storage = Storage.storage().reference()
    
    let profilePhotoRef = Storage.storage().reference().child("Profile Photos")
    
    //uploading google profile pic
    public func uploadGoogleUrlProfilePhoto(_ googleUrl: String, completion: @escaping ((_ url: URL?) -> ())){
        
        //setting the google url string to data to store to firebase storage
        let url  = NSURL(string: googleUrl)! as URL
        let data = NSData(contentsOf: url)
        
        uploadProfilePhoto(data! as Data) { (imageUrl) in
            if imageUrl != nil {
                completion(imageUrl)
            }
            else {
                completion(nil)
            }
        }
    }
    
    //uploading user profile with UIImage used for default and making changes to profile pic
    public func uploadGeneralProfilePhoto(_ image:UIImage, completion: @escaping((_ url: URL?) -> ())){
        guard let imageData = image.jpegData(compressionQuality: 0.75) else {
            return
        }
        
        uploadProfilePhoto(imageData) { (imageUrl) in
            if imageUrl != nil {
                completion(imageUrl)
            }
            else {
                completion(nil)
            }
        }
    }
    
    //upload the profile photo using its data
    private func uploadProfilePhoto(_ imageData: Data, completion: @escaping((_ url: URL?) -> ())){
        
        //setting uid variable
        guard let uid = AuthManager.shared.getUserId() else {
            return
        }
        
        //meta data stuff for putting things in storage
        let metaData = StorageMetadata()
        metaData.contentType = "image/jpg"
        
        let userProfilePhotoRef = profilePhotoRef.child(uid)
        
        userProfilePhotoRef.putData(imageData, metadata: metaData) { (metaData, error) in
            if error == nil, metaData != nil {
                userProfilePhotoRef.downloadURL { (url, error) in
                    completion(url)
                }
            }
            else {
                completion(nil)
            }
        }
    }
}
