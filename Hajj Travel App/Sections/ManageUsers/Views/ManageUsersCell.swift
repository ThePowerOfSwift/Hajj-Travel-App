//
//  ManageUsersCell.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/6/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class ManageUsersCell: UITableViewCell {
    @IBOutlet private weak var userNameLabel: UILabel!
    @IBOutlet private weak var roleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Update view with model
    func update(userName: String, role: String) {
        userNameLabel.text = userName
        roleLabel.text = "Role: \(role)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
