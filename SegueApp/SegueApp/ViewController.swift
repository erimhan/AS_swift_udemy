//
//  ViewController.swift
//  SegueApp
//
//  Created by erimhan on 12.04.2024.
//

import UIKit

class ViewController: UIViewController {
    var username = ""

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // lifecycle
        print("viewDidLoad")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
        nameInput.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
    }
    
    @IBAction func nextButton(_ sender: Any) {
        username = nameInput.text!
        performSegue(withIdentifier: "toSecondVC", sender:nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! ViewController2
            destinationVC.name = username
        }
    }
    

}

