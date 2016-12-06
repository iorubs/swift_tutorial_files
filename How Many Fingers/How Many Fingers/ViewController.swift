//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Ruben Vasconcelos on 15/07/2016.
//  Copyright © 2016 Ruben Vasconcelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imputField: UITextField!
    @IBOutlet weak var wrongGuesses: UILabel!
    @IBOutlet weak var correctGuesses: UILabel!
    
    var rand = Int(arc4random_uniform(5))
    var guessed = false
    var wrongG = 0
    var correctG = 0

    @IBAction func makeGuess(sender: AnyObject) {
        let guess = Int(imputField.text!)
        if guess != nil && guessed == false{
            if guess == rand{
                label.text = "Yay you guess correctly :)"
                label.textColor = UIColor.greenColor()
                guessed = true
                correctG += 1
                correctGuesses.text = String(correctG)
            }
            else{
                label.text = "Wrong! It's not \(guess!)"
                label.textColor = UIColor.redColor()
                wrongG += 1
                wrongGuesses.text = String(wrongG)
            }
        }
        else if guessed == true {
            label.text = "You already know the answer"
        }
    }
    
    @IBAction func tryAgain(sender: AnyObject) {
        label.text = "How many fingers am I holding?"
        label.textColor = UIColor.blueColor()
        rand = Int(arc4random_uniform(5))
        guessed = false
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

