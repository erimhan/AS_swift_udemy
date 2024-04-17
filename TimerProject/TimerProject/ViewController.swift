//
//  ViewController.swift
//  TimerProject
//
//  Created by erimhan on 16.04.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!

    var timer = Timer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerfunction(){
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
            
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "Time is over"
        }
    }
    
    
    
    @IBAction func buttonclicked(_ sender: Any) {
        print("button clicked")
    }
    
}

