//
//  UIViewController+StoryboardInstantiable.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 5/28/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//
// Taken from Abdul Moid Mohammed Github: https://github.com/abdul-moid

import Foundation
import UIKit

extension UIApplication {
    func setRoot(_ viewController: UIViewController) {
        keyWindow?.rootViewController = viewController
    }
}

extension UIViewController {
    /// Instance of ViewController from Storyboard
    static func instantiate(from storyboard: Storyboard) -> Self {
        return storyboard.viewController(viewControllerClass: self)
    }
    
    
    
    //// Need to update this
    @objc open class var storyboardName: String {
        // Naming convention is AccountViewController -> Account.storyboard
        return String(describing: self).replacingOccurrences(of: "ViewController", with: "")
    }
    
    @objc open class var identifier: String {
        // Naming convention is class name
        return String(describing: self)
    }
    
    @objc public static func instance() -> Self {
        return genericInstance()
    }
    
    static func genericInstance<T: UIViewController>() -> T {
        // Instantiate the storyboard
        let storyboard = UIStoryboard(name: storyboardName, bundle: Bundle(for: self))
        // Check to see if we can pull out a view controller of the correct type
        guard let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as? T else {
            fatalError("View controller of type \(String(describing: self)) was not found with identifier \(identifier)")
        }
        
        return viewController
    }
}

/// Storyboards in the App
enum Storyboard: String {
    case Main, Tab, Login, AdminNavView, ManageGroups, ManageUsers, Settings, MapScrollSheet, CreateAccount
    
    /// Instance of UIStoryboard
    var instance: UIStoryboard {
        return UIStoryboard.init(name: self.rawValue, bundle: Bundle.main)
    }
    
    /// View controller from Storyboard
    func viewController<T: UIViewController> (viewControllerClass: T.Type) -> T {
        let storyboardId = (viewControllerClass as UIViewController.Type).id
        return instance.instantiateViewController(withIdentifier: storyboardId) as! T
    }
}
