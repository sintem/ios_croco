//
//  PaddingLabel.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 21.05.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class PaddingLabel: UILabel {
    
    @IBInspectable var topInset: CGFloat = 0
    @IBInspectable var bottomInset: CGFloat = 0
    @IBInspectable var leftInset: CGFloat = 0
    @IBInspectable var rightInset: CGFloat = 0
    
    override func drawText(in rect: CGRect) {
        let insets = UIEdgeInsets.init(top: topInset, left: leftInset, bottom: bottomInset, right: rightInset)
        super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
        
        layer.cornerRadius = 8.0
        layer.masksToBounds = true
        layer.maskedCorners = [.layerMaxXMaxYCorner, /* .layerMinXMaxYCorner, */ .layerMaxXMinYCorner, /* .layerMinXMinYCorner */]
                                    // RightBot
    }
    
    override var intrinsicContentSize: CGSize {
        var intrinsicSuperViewContentSize = super.intrinsicContentSize
        intrinsicSuperViewContentSize.height += topInset + bottomInset
        intrinsicSuperViewContentSize.width += leftInset + rightInset
        return intrinsicSuperViewContentSize
    }
    
}
