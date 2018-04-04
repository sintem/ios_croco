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
    
    func setItem(item: Item) {
        videoImageView.image = item.image
        videoTitleLabel.text = item.title
        videoDescriptionLabel.text = item.description
    }
}
