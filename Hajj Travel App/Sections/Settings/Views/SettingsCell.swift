//
//  SettingsCell.swift
//  Hajj Travel App
//
//  Created by Abdulmoid Mohammed on 6/20/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class SettingsCell: UITableViewCell {
    @IBOutlet private weak var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with title: String) {
        itemLabel.text = title
    }
    
}
