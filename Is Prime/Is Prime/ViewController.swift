//
//  ViewController.swift
//  Is Prime
//
//  Created by Ruben Vasconcelos on 15/07/2016.
//  Copyright © 2016 Ruben Vasconcelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var imputField: UITextField!
    
    @IBAction func checkIsPrime(sender: AnyObject) {
        let num = Int(imputField.text!)
        
        if num != nil{
            var isPrime = true
            
            if num < 2{
                isPrime = false
            }
            else if num > 2 {
                for i in 2...num!-1 {
                    if num! % i == 0 {
                        isPrime = false
                    }
                }
            }
            
            if isPrime {
                result.text = "Yes"
                result.textColor = UIColor.greenColor()
            }
            else {
                result.text = "No"
                result.textColor = UIColor.redColor()
            }
        }
        else {
            result.text = "N/A"
            result.textColor = UIColor.redColor()
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

