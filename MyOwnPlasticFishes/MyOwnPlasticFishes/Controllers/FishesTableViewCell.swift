//
//  FishesTableViewCell.swift
//  MyOwnPlasticFishes
//
//  Created by Abraham Quezada on 9/26/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class FishesTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var imageFish: UIImageView!
    @IBOutlet weak var fishName: UILabel!
    @IBOutlet weak var fishDescription: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        self.accessoryType = UITableViewCell.AccessoryType.disclosureIndicator
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
