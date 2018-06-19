//
//  GlobalVariables.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 18.06.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import Foundation

class GlobalVariables {
    
    // These are the properties you can store in your singleton
    private var myName: String = "bob"
    
    private var piePrice:[String:Double] = [
        "Apple":3,
        "Raspberry":3
    ]
    
    // Here is how you would get to it without there being a global collision of variables.
    // , or in other words, it is a globally accessable parameter that is specific to the
    // class.
    class var sharedManager: GlobalVariables {
        struct Static {
            static let instance = GlobalVariables()
        }
        return Static.instance
    }
}
