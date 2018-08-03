//
//  ViewIdentifiable.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 5/28/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//
// Taken from Abdul Moid Mohammed Github: https://github.com/abdul-moid

import Foundation
import UIKit

// Makes a class identifiable
protocol ViewIdentifiable {
    static var id: String { get }
}

extension UIViewController: ViewIdentifiable {
    static var id: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ViewIdentifiable {
    static var id: String {
        return String(describing: self)
    }
}
