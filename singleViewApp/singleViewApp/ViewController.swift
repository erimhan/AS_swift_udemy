//
//  ViewController.swift
//  singleViewApp
//
//  Created by erimhan on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        // Do any additional setup after loading the view.
        
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width * 0.5 - width * 0.8 / 2, y: height / 3, width: width * 0.8, height: 50)
        view.addSubview(myLabel)
        
        let myButton = UIButton()
        myButton.setTitle("My button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.red, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.6, width:200 , height:100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction(){
        myLabel.text = "Değiştim"
    }


}

