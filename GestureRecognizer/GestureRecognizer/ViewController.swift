//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by erimhan on 13.04.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var isCyber = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    @objc func changePic() {

        
        if isCyber == true {imageView.image = UIImage(named: "cyberpunk")
            label.text = "cyberpunk"
            isCyber = false
        } else {
            imageView.image = UIImage(named: "ciricyberpunk")
            label.text = "ciri"
            isCyber = true
        }
        

        
    }

}

