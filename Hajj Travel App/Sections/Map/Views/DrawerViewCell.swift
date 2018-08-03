//
//  DrawerViewCell.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 7/20/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class DrawerViewCell: UITableViewCell {
    @IBOutlet weak var userNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // Update view with model
    func update(model: String) {
        userNameLabel.text = model
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
