//
//  ViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 5/28/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//
// Taken from Abdul Moid Mohammed Github: https://github.com/abdul-moid

import UIKit

protocol ControllerUpdatable {
    func setup()
    func update<T: AnyObject> (with model: T?)
}

open class ViewController: UIViewController, ControllerUpdatable {

    override open func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override open func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Perform any additional setup on view load
        - Any programmatic view setup that needs to be performed on view load goes here
     
    */
    open func setup() {  }
    
    
    /**
     Perfrom any data updates
        - Used to pass data from one view controller to another
    */
    open func update<T: AnyObject> (with model: T?) { }
    
}

open class TableViewController: UITableViewController, ControllerUpdatable {
    /**
     Perform any additional setup on view load
     - Any programmatic view setup that needs to be performed on view load goes here
     
     */
    open func setup() {  }
    
    
    /**
     Perfrom any data updates
     - Used to pass data from one view controller to another
     */
    open func update<T: AnyObject> (with model: T?) { }
}
