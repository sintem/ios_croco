//
//  Video.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 15.03.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var image: UIImage
    var title: String
    var description: String
    var item_id: String
    
    init(itemID: String, image: UIImage, title: String, description: String) {
        
        self.item_id = itemID
        self.image = image
        self.title = title
        self.description = description
    }
}

