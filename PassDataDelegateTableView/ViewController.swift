//
//  ViewController.swift
//  PassDataDelegateTableView
//
//  Created by Anhdzai on 1/8/18.
//  Copyright © 2018 Anhdzai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var data: String?
    var delegate: DataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = data
    }

    @IBAction func buttonSave(_ sender: Any) {
        if let dataInt = Int(textField.text!) {
            delegate?.delegate(dataIndex: dataInt)
            navigationController?.popViewController(animated: true)
        }
    }
}

