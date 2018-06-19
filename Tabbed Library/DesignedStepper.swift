//
//  DesignedStepper.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 11.06.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class DesignedStepper: UIStepper {
    
   // @IBInspectable var fillColor: UIColor = UIColor.
    
    override func draw(_ rect: CGRect) {
        
        self.transform = CGAffineTransform(scaleX: 1.8, y: 1.8);
        self.transform = self.transform.rotated(by: CGFloat(-Double.pi / 2))
        
        func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
            let size = image.size
            
            let widthRatio  = targetSize.width  / size.width
            let heightRatio = targetSize.height / size.height
            
            // Figure out what our orientation is, and use that to form the rectangle
            var newSize: CGSize
            if(widthRatio > heightRatio) {
                newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
            } else {
                newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
            }
            
            // This is the rect that we've calculated out and this is what is actually used below
            let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
            
            // Actually do the resizing to the rect using the ImageContext stuff
            UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
            image.draw(in: rect)
            let newImage = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return newImage!
        }
        
        let stepperDecrementImage = resizeImage(image: UIImage(named: "substract16")!, targetSize: CGSize(width: 16, height: 16))
        
        self.setDecrementImage(stepperDecrementImage, for: .normal)
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}


