//
//  ViewController.swift
//  alertProject
//
//  Created by erimhan on 13.04.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordTextSecond: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpClick(_ sender: Any) {
        
        
        /*
        let alert = UIAlertController(title: "Error", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { UIAlertAction in
            // button clicked
            print("button clicked")
        }
        self.present(alert, animated: true, completion: nil)
        */
        if usernameText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Username not found")

        } else if passwordText.text == "" {
            makeAlert(titleInput: "Error", messageInput: "Password not found")

        } else if passwordText.text != passwordTextSecond.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords are not the same")

        } else {
            makeAlert(titleInput: "Succes!", messageInput: "Account created")
        }
        
    }
    
    func makeAlert(titleInput: String, messageInput:String) {
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(cancelButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

