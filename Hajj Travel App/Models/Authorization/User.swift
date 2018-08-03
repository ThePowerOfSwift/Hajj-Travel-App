//
//  User.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/20/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import CoreLocation

// Determines the acces level of each user
enum AccessLevel: String {
    // Super User --- TQ
    case superAdmin
    // Represents each travel agency
    case mainAdmin
    // Represents admin assigned by travel agency
    case subAdmin
    // Represents the lowest access level of user
    case user
    
    var value: String {
        switch self {
        case .superAdmin: return "Super Admin"
        case .mainAdmin: return "Main Admin"
        case .subAdmin: return "Sub Admin"
        case .user: return "User"
        }
    }
}

/**
    Represents the user object
 */
struct User {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
    let groupId: String
    let title: String
    let latitude: Double
    let longitude: Double
    let accessLevel: AccessLevel
    
    // Returns users full name
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    // Returns location coordinates
    var coordinates: CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
