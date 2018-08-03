//
//  Theme.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 7/2/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import UIKit

struct Theme {
    // Singleton
    static let shared = Theme()
    
    // App Color
    let colors: Colors
    
    private init() {
        colors = Colors()
    }
}

struct Colors {
    let primary: UIColor
    
    init() {
        primary = UIColor(red: 86/255, green: 122/255, blue: 179/255, alpha: 1)
    }
}
