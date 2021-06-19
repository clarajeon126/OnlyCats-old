//
//  Extensions.swift
//  OnlyCats
//
//  Created by Clara Jeon on 6/18/21.
//

import Foundation

extension Notification.Name {
    static var signInGoogleCompleted: Notification.Name {
        return .init(rawValue: #function)
    }
    
    static var returnUserSignInGoogleCompleted: Notification.Name {
        return .init(rawValue: #function)
    }
}
