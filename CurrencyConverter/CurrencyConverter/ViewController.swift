//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by erimhan on 2.05.2024.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var canLabel: UILabel!
    @IBOutlet weak var tryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getRatesClicked(_ sender: Any) {
        

        
        // PARSİNG & JSON SERİALİZATİON
        
        // REQUEST & SESSİON
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=8cd5da88c382e4ad9b9c7cdd003fb923")
        
        let session = URLSession.shared
        
        //closure
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "ok", style: UIAlertAction.Style.default)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            } else {
                // RESPONSE & DATA
                if data != nil {
                    
                    do{
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        //ASYNC
                        
                        DispatchQueue.main.async {
                            if let rates = jsonResponse["rates"] as? [String : Any] {
                                
                                if let usd = rates["USD"] as? Double {
                                    self.usdLabel.text = String("USD:\(usd)")
                                }
                                if let eur = rates["EUR"] as? Double {
                                    self.eurLabel.text = String("EUR:\(eur)")
                                }
                                if let gbp = rates["GBP"] as? Double {
                                    self.gbpLabel.text = String("GBP:\(gbp)")
                                }
                                if let cad = rates["CAD"] as? Double {
                                    self.canLabel.text = String("CAD:\(cad)")
                                }
                                if let tr = rates["TRY"] as? Double {
                                    self.tryLabel.text = String("TRY:\(tr)")
                                }
                                
                            }
                        }
                        
                    } catch {
                    
                    }
                    
                }
                
                
            }
        }
        task.resume()
        
    }
    
}

