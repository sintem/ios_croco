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
    var price: Float
    var counter: Double
    
    init(itemID: String, image: UIImage, title: String, description: String, price: Float, counter: Double) {
        
        self.item_id = itemID
        self.image = image
        self.title = title
        self.description = description
        self.price = price
        self.counter = counter
    }
}

