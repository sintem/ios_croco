//
//  OrderPopViewController.swift
//  Tabbed Library
//
//  Created by Isa Usmanov on 24.04.18.
//  Copyright © 2018 Isa Usmanov. All rights reserved.
//

import UIKit

class OrderPopViewController: UIViewController {
    
    @IBOutlet weak var pickAddressTxt: UITextField!
    @IBOutlet weak var pickTimeTxt: UITextField!

    @IBOutlet weak var orderBtn: UIButton!
    // When X (cross is pressed return to the previous veiw controller)
    @IBAction func orderAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isTranslucent = false;
        // Do any additional setup after loading the view.
        orderBtn.layer.cornerRadius = 4
        orderBtn.clipsToBounds = true
        createDataPicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Date picker
    
    let timePicker = UIDatePicker()
    
    func createDataPicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: false)
        
        pickTimeTxt.inputAccessoryView = toolbar
        pickTimeTxt.inputView = timePicker
        
        timePicker.datePickerMode = .dateAndTime
        
    }
    
    @objc func donePressed() {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short

        
        let dateString = formatter.string(from: timePicker.date)
        
        pickTimeTxt.text = "\(dateString )"
        self.view.endEditing(true)
    }

}
