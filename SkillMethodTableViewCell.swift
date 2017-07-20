//
//  SkillMethodTableViewCell.swift
//  OSRS Helper Tool
//
//  Created by John Ingwersen on 7/2/17.
//  Copyright © 2017 Personal. All rights reserved.
//

import UIKit

class SkillMethodTableViewCell: UITableViewCell {

    @IBOutlet weak var methodLabel: UILabel!
    @IBOutlet weak var gpXpLabel: UILabel!
    @IBOutlet weak var backgroundLabel: UILabel!
    @IBOutlet weak var methodImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
