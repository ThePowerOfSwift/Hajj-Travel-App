//
//  UINavigationController+Transition.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 7/19/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

extension UINavigationController {
    // Push
    public func push(_ viewController: ViewController.Type, context: Any? = nil, animated: Bool = true) {
        let viewController = viewController.instance()
        if let context = context {
            viewController.update(with: context as AnyObject)
        }
        pushViewController(viewController, animated: animated)
    }
}
