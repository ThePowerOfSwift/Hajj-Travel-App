//
//  CreateAccountViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 7/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    @IBOutlet weak var agencyNameTextField: UITextField!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do additional view setup
        initialSetup()
    }
    
    private func initialSetup() {
        // Do any additional setup after loading the view.
        self.title = "Create User"
        
        // Secure entry
        passwordTextField.isSecureTextEntry = true
        
        // Setup border for textfields
        setupBorders(view: agencyNameTextField)
        setupBorders(view: firstNameTextField)
        setupBorders(view: lastNameTextField)
        setupBorders(view: phoneTextField)
        setupBorders(view: emailTextField)
        setupBorders(view: passwordTextField)
    }
    
    // Setup Borders
    private func setupBorders(view: UIControl) {
        view.layer.borderWidth = 1
        view.layer.borderColor = Theme.shared.colors.primary.cgColor
        view.layer.cornerRadius = 5
    }

}
