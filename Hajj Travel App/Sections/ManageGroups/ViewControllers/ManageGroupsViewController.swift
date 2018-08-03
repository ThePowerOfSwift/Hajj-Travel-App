//
//  ManageGroupsViewController.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/6/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class ManageGroupsViewController: UITableViewController {
    
    private let groups = ["Hajj Group 1", "Hajj Group 2", "Hajj Group 3", "Hajj Group 4"]

    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Clear the back button title
        navigationItem.backBarButtonItem?.title = ""
    }
    
    func initialSetup() {
        // Set the view title
        title = "Manage Groups"
        
        // Preserve selection between presentations
        clearsSelectionOnViewWillAppear = true
        
        // Bar button
        let addButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: nil)
        
        // Edit button in the navigation bar for this view controller.
        navigationItem.rightBarButtonItem = addButtonItem
        
        // Register cell to be dequeued by tableView
        tableView.register(UINib(nibName: ManageGroupsCell.id, bundle: nil), forCellReuseIdentifier: ManageGroupsCell.id)
    }
}

// MARK: - Table view data source

extension ManageGroupsViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ManageGroupsCell.id, for: indexPath) as! ManageGroupsCell
        cell.update(groupName: groups[indexPath.row])
        return cell
     }
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: UITableViewRowActionStyle.destructive, title: "Delete" , handler: { _,_ in return })
        
        return [deleteAction]
    }
    
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
         }
     }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
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
