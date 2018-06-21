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
    var initialStepperVal: Double = 0
    var countervalFromDict: Double = 0
    var item_id: String = "nil"
    
    // To be taken care of: functionality, logic
    // Implemented logic does not work. Assign counter values to the db variables and only then ask to diplay them.
    @IBAction func stepper(_ sender: UIStepper) {
          //let dictVal = GlobalVariables.sharedManager.piePrice[item_id]!
      //  if(dictVal != nil){
            
      //  }
       
            
            //let dictVal = GlobalVariables.sharedManager.piePrice[item_id]!
            
            if(sender.value > initialStepperVal) {
                print("INCREMENT")
                initialStepperVal=initialStepperVal+1
                
                if(GlobalVariables.sharedManager.piePrice[item_id] != nil){
                    let dictVal = GlobalVariables.sharedManager.piePrice[item_id]!
                    GlobalVariables.sharedManager.piePrice.updateValue(dictVal+1, forKey: item_id)
                }else{
                    GlobalVariables.sharedManager.piePrice.updateValue(1, forKey: item_id)
                }
                
            }else{
                print("DECREMENT")
                initialStepperVal=initialStepperVal-1
                if(GlobalVariables.sharedManager.piePrice[item_id] != nil){
                    let dictVal = GlobalVariables.sharedManager.piePrice[item_id]!
                    GlobalVariables.sharedManager.piePrice.updateValue(dictVal-1, forKey: item_id)
                }
            }
        
        
        if (sender.value > 0) {
            counterlabel.text = "x" + String(Int(GlobalVariables.sharedManager.piePrice[item_id]!))
        } else {
            counterlabel.text = ""
        }
        print(GlobalVariables.sharedManager.piePrice)
        print("Initial Stepper Value: \(initialStepperVal)")
        print("Dictionary Counter Value: \(GlobalVariables.sharedManager.piePrice[item_id]!)")
       // print(item_id + " x" + String(Int(sender.value)))
    }
    func setItem(item: Item) {
       
        item_id = item.item_id
        itemImageView.image = item.image
        itemTitleLabel.text = item.title
        itemDescriptionLabel.text = item.description
        itemPriceTag.text = "€ " + String(item.price)
        
        if(GlobalVariables.sharedManager.piePrice[item_id] != nil){
            if(GlobalVariables.sharedManager.piePrice[item_id]! > 0) {
                countervalFromDict = GlobalVariables.sharedManager.piePrice[item_id]!
                counterlabel.text = "x" + String(Int(GlobalVariables.sharedManager.piePrice[item_id]!))
                itemStepper.value = GlobalVariables.sharedManager.piePrice[item_id]!
            }
        }else{
            counterlabel.text = ""
            countervalFromDict = 0
        }
        
        
       
    }
}





