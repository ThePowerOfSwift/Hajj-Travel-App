//
//  MainViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/2/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class MainViewController: ViewController {
    @IBOutlet private weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = Theme.shared.colors.primary.cgColor
    }
    
    @IBAction private func loginTappped(_ sender: Any) {
        let loginVC = LoginViewController.instantiate(from: .Login)
        let nav = UINavigationController(rootViewController: loginVC)
        nav.navigationBar.topItem?.title = " "
        present(nav, animated: true, completion: nil)
    }
    
    @IBAction private func createAccountTapped(_ sender: Any) {
        
    }
}
