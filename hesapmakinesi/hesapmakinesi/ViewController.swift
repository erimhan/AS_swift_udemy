//
//  ViewController.swift
//  hesapmakinesi
//
//  Created by erimhan on 23.02.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ilk_text: UITextField!
    
    @IBOutlet weak var ikinci_text: UITextField!
    
    @IBOutlet weak var sonucLabel: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func toplama(_ sender: Any) {
        
        if let ilkSayi = Int(ilk_text.text!){
            if let ikinciSayi = Int(ikinci_text.text!){
                let sonuc = ilkSayi + ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
        
    }
    @IBAction func cikarma(_ sender: Any) {
        if let ilkSayi = Int(ilk_text.text!){
            if let ikinciSayi = Int(ikinci_text.text!){
                let sonuc = ilkSayi - ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
        
    }
    @IBAction func carpma(_ sender: Any) {
        if let ilkSayi = Int(ilk_text.text!){
            if let ikinciSayi = Int(ikinci_text.text!){
                let sonuc = ilkSayi * ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
   
    }
    @IBAction func bolme(_ sender: Any) {
        if let ilkSayi = Int(ilk_text.text!){
            if let ikinciSayi = Int(ikinci_text.text!){
                let sonuc = ilkSayi / ikinciSayi
                sonucLabel.text = String(sonuc)
                
            }
        }
        
 
    }

}

