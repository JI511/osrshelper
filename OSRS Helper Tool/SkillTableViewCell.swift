//
//  SkillTableViewCell.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillTableViewCell: UITableViewCell {

    @IBOutlet weak var skillNameLabel: UILabel!
    @IBOutlet weak var skillImageView: UIImageView!
    @IBOutlet weak var skillOutlineLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
