//
//  ViewController.swift
//  denemes
//
//  Created by erimhan on 22.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yazı: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buton(_ sender: Any) {
        yazı.text = "Yeni Yazı"
    }
    
}

