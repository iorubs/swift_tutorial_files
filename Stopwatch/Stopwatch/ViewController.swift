//
//  ViewController.swift
//  Stopwatch
//
//  Created by Ruben Vasconcelos on 18/07/2016.
//  Copyright © 2016 Ruben Vasconcelos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    var timer = NSTimer()
    var time = 0
    
    func runner() {
        time += 1
        timeLabel.text = "\(time)"
    }

    @IBAction func playAction(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.runner), userInfo: nil, repeats: true)
        timeLabel.textColor = UIColor.greenColor()
    }
    
    @IBAction func pauseAction(sender: AnyObject) {
        timer.invalidate()
        timeLabel.textColor = UIColor.redColor()
    }
    
    @IBAction func resetAction(sender: AnyObject) {
        timeLabel.textColor = UIColor.blackColor()
        timer.invalidate()
        time = 0
        timeLabel.text = "\(time)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

