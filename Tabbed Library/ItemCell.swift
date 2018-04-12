//
//  VideoCell.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 15.03.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoDescriptionLabel: UILabel!
    
    var item_id: String = "nil"
    
    // To be taken care of: functionality, logic
    @IBAction func stepper(_ sender: UIStepper) {
        videoTitleLabel.text = String(Int(sender.value))
        print(item_id + " x" + String(Int(sender.value)))
    }
    func setItem(item: Item) {
        item_id = item.item_id
        videoImageView.image = item.image
        videoTitleLabel.text = item.title
        videoDescriptionLabel.text = item.description
    }
}
