//
//  ViewController.swift
//  Example App
//
//  Created by Ruben Vasconcelos on 15/07/2016.
//  Copyright © 2016 Ruben Vasconcelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var button: UIButton!
    
    var clicks = 0

    @IBAction func onClick(sender: AnyObject) {
        if inputField.hasText(){
            label.text = inputField.text
        }
        else{
            label.text = "My first label App"
        }
        clicks += 1
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

