//
//  OrderViewController.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 07.04.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController {

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "ORDER"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarItem.title = "ORDER"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
