//
//  VideoCell.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 15.03.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemTitleLabel: UILabel!
    @IBOutlet weak var itemDescriptionLabel: UILabel!
    @IBOutlet weak var itemPriceTag: PaddingLabel!
    @IBOutlet weak var counterlabel: UILabel!
    
    @IBOutlet weak var itemStepper: UIStepper!
    
    
    var item_id: String = "nil"
    
    // To be taken care of: functionality, logic
    // Implemented logic does not work. Assign counter values to the db variables and only then ask to diplay them.
    @IBAction func stepper(_ sender: UIStepper) {
        if (sender.value > 0) {
            counterlabel.text = "x" + String(Int(sender.value))
        } else {
            counterlabel.text = ""
        }
       // print(item_id + " x" + String(Int(sender.value)))
    }
    func setItem(item: Item) {
       // itemStepper.transform = itemStepper.transform.rotated(by: CGFloat(Double.pi / 2))

        item_id = item.item_id
        itemImageView.image = item.image
        itemTitleLabel.text = item.title
        itemDescriptionLabel.text = item.description
        itemPriceTag.text = "€ " + String(item.price)
    }
}
