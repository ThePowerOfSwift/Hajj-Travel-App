//
//  ReplaceableView.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 5/28/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//
// Taken from Abdul Moid Mohammed Github: https://github.com/abdul-moid

import UIKit
import Foundation

class CustomReplaceableView: UIView {
    override func awakeAfter(using aDecoder: NSCoder) -> Any? {
        super.awakeAfter(using: aDecoder)
        
        /// Check if the views are empty
        guard subviews.isEmpty else { return self }
        
        let view = type(of: self).nibView() as CustomReplaceableView
        view.frame = bounds
        view.translatesAutoresizingMaskIntoConstraints = self.translatesAutoresizingMaskIntoConstraints
        
        return view
    }
}

extension UIView {
    class func nibView<T: UIView>() -> T {
        return nib(named: String(describing: self))
    }
    
    static func nib<T: UIView> (named name: String) -> T {
        // ensure the nib exists
        guard let views = Bundle(for: self).loadNibNamed(name, owner: nil, options: nil), let firstView = views.first else {
            preconditionFailure("Missing nib with name \(name)")
        }
        
        // ensure the nib contains a view of the correct type
        guard let result: T = firstView as? T else {
            preconditionFailure("Nib named \(name) does not contain view of type \(String(describing: T.self))")
        }
        
        return result
    }
}

