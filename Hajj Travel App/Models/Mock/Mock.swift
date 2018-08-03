//
//  Mock.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 7/19/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

class Mock {
    static func groupUsers() -> [User] {
        let user1 = User(firstName: "Reza", lastName: "Arslan", email: "reza@gmail.com", password: "hello", groupId: "1", title: "Leader", latitude: 44.954651, longitude: -89.624271, accessLevel: .user)
        let user2 = User(firstName: "Mehdi", lastName: "Hasan", email: "mehdi@gmail.com", password: "hello", groupId: "1", title: "Teacher", latitude: 44.961894, longitude: -89.658671, accessLevel: .user)
        let user3 = User(firstName: "Moosa", lastName: "Ibrahim", email: "moosa@gmail.com", password: "hello", groupId: "3", title: "Member", latitude: 44.962561, longitude: -89.636167, accessLevel: .user)
        
        return [user1, user2, user3]
    }
    
    static func mainAdminUsers() -> [User] {
        let user1 = User(firstName: "Travel", lastName: "Agency 1", email: "reza@gmail.com", password: "hello", groupId: "1", title: AccessLevel.mainAdmin.value, latitude: 44.954651, longitude: -89.624271, accessLevel: .user)
        let user2 = User(firstName: "Travel", lastName: "Agency 2", email: "mehdi@gmail.com", password: "hello", groupId: "1", title: AccessLevel.mainAdmin.value, latitude: 44.961894, longitude: -89.658671, accessLevel: .user)
        let user3 = User(firstName: "Travel", lastName: "Agency 3", email: "moosa@gmail.com", password: "hello", groupId: "3", title: AccessLevel.mainAdmin.value, latitude: 44.962561, longitude: -89.636167, accessLevel: .user)
        
        return [user1, user2, user3]
    }
    
    
    static func mockUser() -> User {
        return User(firstName: "Moosa", lastName: "Ibrahim", email: "moosa@gmail.com", password: "hello", groupId: "3", title: "Member", latitude: 44.962561, longitude: -89.636167, accessLevel: .user)
    }
    
    static func mockMainAdmin() -> User {
        return User(firstName: "Travel", lastName: "Agency 1", email: "reza@gmail.com", password: "hello", groupId: "1", title: AccessLevel.mainAdmin.value, latitude: 44.954651, longitude: -89.624271, accessLevel: .user)
    }
    
    static func mockSuperAdmin() -> User {
        return User(firstName: "Abdul Moid", lastName: "Mohammed", email: "amoid@gmail.com", password: "hello", groupId: "1", title: AccessLevel.superAdmin.value, latitude: 44.954651, longitude: -89.624271, accessLevel: .user)
    }
}
