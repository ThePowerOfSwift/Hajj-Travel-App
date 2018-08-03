//
//  SettingsViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/19/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private let items = ["Enable Location", "Terms of Use", "Privacy Policy"]
    private let viewTitle = "Settings"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do the initial setup
        initialSetup()
    }
    
    private func initialSetup() {
        // Set the tableView delegate and data source
        tableView.delegate = self
        tableView.dataSource = self
        
        // Register settings cell to be dequeued by tableView
        tableView.register(UINib(nibName: SettingsCell.id, bundle: nil), forCellReuseIdentifier: SettingsCell.id)
        
        // Set the title for the view controller
        title = viewTitle
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: SettingsCell.id, for: indexPath) as! SettingsCell
        cell.update(with: items[indexPath.row])
        return cell
    }
}
