//
//  AnnotationView.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/20/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit
import MapKit

class AnnotationView: MKPointAnnotation {
    init(user: User) {
        super.init()
        
        // Set the annotation title to user's full name
        title = user.fullName
        
        // Set the coordinates of the pin to user's location
        coordinate = user.coordinates
    }
    
    init(name: String, coord: CLLocationCoordinate2D) {
        super.init()
        
        title = name
        
        coordinate = coord
    }
}
