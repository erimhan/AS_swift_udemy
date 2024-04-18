//
//  DeatilsVC.swift
//  landmarBookApp
//
//  Created by erimhan on 18.04.2024.
//

import UIKit

class DeatilsVC: UIViewController {
    @IBOutlet weak var detailsImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailLabel.text = selectedLandmarkName
        detailsImage.image = selectedLandmarkImage
       
    }
    


}
