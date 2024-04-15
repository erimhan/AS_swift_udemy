//
//  ViewController.swift
//  birthday_app
//
//  Created by erimhan on 15.03.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var birthdate: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let myName = storedName as? String{
            nameLabel.text = myName
        }
        
        if let mybirth = storedBirthday as? String{
            birthdateLabel.text = mybirth
        }
    }

    @IBAction func save_data(_ sender: Any) {
        
        UserDefaults.standard.set(name.text!, forKey:"name")
        UserDefaults.standard.set(birthdate.text!, forKey:"birthday")
        //UserDefaults.standard.synchronize()
        
        
        nameLabel.text = "İsim: \(name.text!)"
        birthdateLabel.text = "Tarih: \(birthdate.text!)"
    }
    
    @IBAction func delete_data(_ sender: Any) {
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if storedName is String{
            UserDefaults.standard.removeObject(forKey: "name")
            nameLabel.text = "İsim:"
        }
        
        if storedBirthday is String{
            UserDefaults.standard.removeObject(forKey: "birthday")
            birthdateLabel.text = "Tarih:"
            
        }
        
        
        
    }
    
    
}

