//
//  LoginViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class LoginViewController: ViewController {
    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do additional view setup
        initialSetup()
    }
    
    private func initialSetup() {
        // Do any additional setup after loading the view.
        self.title = "Log In"
        
        // Secure entry
        passwordTextField.isSecureTextEntry = true
        
        // Setup border for textfields
        setupBorders(view: emailTextField)
        setupBorders(view: passwordTextField)
    }
    
    // Setup Borders
    private func setupBorders(view: UIControl) {
        view.layer.borderWidth = 1
        view.layer.borderColor = Theme.shared.colors.primary.cgColor
        view.layer.cornerRadius = 5
    }
    
    @IBAction private func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func logInButtonTapped(_ sender: Any) {
        // TODO --  Change this logic later
        if emailTextField.text == "amoid@outlook.com"{
            // Shows the admin account options
            showMyAccount()
        } else {
            // Show the tab view controller
            showTabViewController()
        }
    }
}

extension LoginViewController {
    private func showTabViewController() {
        let tabVC = TabViewController.instantiate(from: .Tab)
        UIApplication.shared.setRoot(tabVC)
    }
    
    private func showMyAccount() {
        let accountVC = AdminNavViewController.instantiate(from: .AdminNavView)
        UIApplication.shared.setRoot(accountVC)
    }
}
