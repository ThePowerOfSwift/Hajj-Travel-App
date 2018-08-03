//
//  PlaceLocationViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/7/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class PlaceLocationViewController: ViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    @IBOutlet private weak var mapView: MKMapView!
    
    // Location Manager
    private let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initial Setup
        initialSetup()
    }
    
    private func initialSetup() {
        // Do any additional setup after loading the view.
        title = "Place Location"
        
        // Set the mapview deletegate to self
        mapView.delegate = self
        
        // Show user location
        mapView.showsUserLocation = true
        
        // Setup Location Manager
        setupLocationManager()
        
        // Add annotations to map view
        mapView.showAnnotations(spitAnnotations(), animated: true)
    }
    
    private func setupLocationManager() {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.startUpdatingLocation()
        }
    }
    
    private func spitAnnotations() -> [AnnotationView] {
        let annotation1 = AnnotationView(name: "Reza Arslan", coord: CLLocationCoordinate2DMake(44.954651, -89.624271))
        let annotation2 = AnnotationView(name: "Mehdi Hasan", coord: CLLocationCoordinate2DMake(44.961894, -89.658671))
        let annotation3 = AnnotationView(name: "Moosa Ibrahim", coord: CLLocationCoordinate2DMake(44.962561, -89.636167))
        
        return [annotation1, annotation2, annotation3]
    }
}
