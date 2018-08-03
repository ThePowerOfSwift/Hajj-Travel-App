//
//  ManageUsersViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/6/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class ManageUsersViewController: TableViewController {
    private var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    private func initialSetup() {
        // Set the view title
        title = "Manage Users"
        
        // Preserve selection between presentations
        clearsSelectionOnViewWillAppear = true
        
        // Bar button
        let addButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: nil)
        
        // Edit button in the navigation bar for this view controller.
        navigationItem.rightBarButtonItem = addButtonItem
        
        // Clear the back button title
        navigationItem.backBarButtonItem?.title = ""
        
        // Register cell to be dequeued by tableView
        tableView.register(UINib(nibName: ManageUsersCell.id, bundle: nil), forCellReuseIdentifier: ManageUsersCell.id)
    }
    
    override func update<T>(with model: T?) where T : AnyObject {
        guard let model = model as? Array<User> else { return }
        users = model
        tableView.reloadData()
    }
}

// MARK: - Table view data source

extension ManageUsersViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ManageUsersCell.id, for: indexPath) as! ManageUsersCell
        cell.update(userName: users[indexPath.row].fullName, role: users[indexPath.row].title)
        return cell
    }

    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editAction = UITableViewRowAction(style: UITableViewRowActionStyle.default, title: "Edit" , handler: { _,_ in return })
        
        editAction.backgroundColor = UIColor.lightGray
        
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.destructive, title: "Delete" , handler: { _,_ in return })

        return [deleteAction, editAction]
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
}
