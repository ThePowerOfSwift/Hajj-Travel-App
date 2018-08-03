//
//  ManageGroupsCell.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/6/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class ManageGroupsCell: UITableViewCell {
    @IBOutlet private weak var groupNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Update view with model
    func update(groupName: String) {
        groupNameLabel.text = groupName
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
