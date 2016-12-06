//
//  ViewController.swift
//  Cat Years
//
//  Created by Ruben Vasconcelos on 15/07/2016.
//  Copyright © 2016 Ruben Vasconcelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var imputField: UITextField!
    
    @IBAction func submitAction(sender: AnyObject) {
        let age = Int(imputField.text!)
        if age != nil{
            ageLabel.text = "\(age! * 7)"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

