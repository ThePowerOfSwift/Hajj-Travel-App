//
//  FirstViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    private let items = ["Manage Groups", "Manage Users", "Settings", "Log out"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initalSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Selected row
        guard let selectedRow = tableView.indexPathForSelectedRow else { return }
        
        // Deselect the table view cell
        tableView.deselectRow(at: selectedRow, animated: true)
    }

    private func initalSetup() {
        // Set the tableView delegate and data source
        tableView.dataSource = self
        tableView.delegate = self
        
        // Register my account cell to be dequeued by tableView
        tableView.register(UINib(nibName: MyAccountCell.id, bundle: nil), forCellReuseIdentifier: MyAccountCell.id)
    }
}

extension AccountViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyAccountCell.id, for: indexPath) as! MyAccountCell
        cell.update(with: items[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let manageGroupsVC = ManageGroupsViewController.instantiate(from: .ManageGroups)
            navigationController?.pushViewController(manageGroupsVC, animated: true)
        case 1:
            let userGroupsVC = ManageUsersViewController.instantiate(from: .ManageUsers)
            userGroupsVC.update(with: Mock.groupUsers() as AnyObject)
            navigationController?.pushViewController(userGroupsVC, animated: true)
        case 2:
            let settingsVC = SettingsViewController.instantiate(from: .Settings)
            navigationController?.pushViewController(settingsVC, animated: true)
        case 3:
            let mainVC = MainViewController.instantiate(from: .Main)
            UIApplication.shared.setRoot(mainVC)
        default:
            break
        }
    }
}
