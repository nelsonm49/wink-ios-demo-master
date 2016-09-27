//
//  PeopleTableViewCell.swift
//  WinkDemo
//
//  Created by Nelson Matias on 9/26/16.
//  Copyright © 2016 Wink Inc. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {
    @IBOutlet var name: UILabel!
    @IBOutlet var age: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
