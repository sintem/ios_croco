//
//  OrderPopViewController.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 24.04.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class OrderPopViewController: UIViewController {
    
    @IBOutlet weak var aboveLbl: UILabel!
    @IBOutlet weak var txtFldSend: UITextField!
    
    // When X (cross is pressed return to the previous veiw controller)
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Action
    @IBAction func sendBtn(_ sender: Any) {
        aboveLbl.text = "You typed: " + (txtFldSend.text)!
    }

}
