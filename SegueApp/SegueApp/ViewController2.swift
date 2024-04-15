//
//  ViewController2.swift
//  SegueApp
//
//  Created by erimhan on 12.04.2024.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var SezondLabel: UILabel!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        SezondLabel.text = name
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
