//
//  DesignedStepper.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 11.06.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class DesignedStepper: UIStepper {
    
    @IBInspectable var fillColor: UIColor = UIColor.blue
    
    override func draw(_ rect: CGRect) {
        layer.backgroundColor = fillColor.cgColor
        self.transform
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
