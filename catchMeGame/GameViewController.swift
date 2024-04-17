//
//  GameViewController.swift
//  catchMeGame
//
//  Created by erimhan on 16.04.2024.
//

import UIKit

class GameViewController: UIViewController {
    
    var imageArray = [UIImageView]()
    
    //pictures
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    @IBOutlet weak var image6: UIImageView!
    @IBOutlet weak var image7: UIImageView!
    @IBOutlet weak var image8: UIImageView!
    @IBOutlet weak var image9: UIImageView!
    
    //counter
    var tapCounter = 0

    //labels
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gameScoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    var timer = Timer()
    var counter = 0
    var hideTimer = Timer()
    var highScore = 0
    
    let randomNumber = Int.random(in: 0..<9)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        //high-score
        
        let storedScore = UserDefaults.standard.object(forKey: "highscore")
        
        if storedScore == nil {
            highScore = 0
            highScoreLabel.text = "High-Score: \(highScore)"
        }
        
        if let newScore = storedScore as? Int {
            highScore = newScore
            highScoreLabel.text = "High-Score: \(highScore)"
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(hideImage), userInfo: nil, repeats: true)
        
        image1.isUserInteractionEnabled = true
        image2.isUserInteractionEnabled = true
        image3.isUserInteractionEnabled = true
        image4.isUserInteractionEnabled = true
        image5.isUserInteractionEnabled = true
        image6.isUserInteractionEnabled = true
        image7.isUserInteractionEnabled = true
        image8.isUserInteractionEnabled = true
        image9.isUserInteractionEnabled = true
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(tapCount))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(tapCount))

        image1.addGestureRecognizer(recognizer1)
        image2.addGestureRecognizer(recognizer2)
        image3.addGestureRecognizer(recognizer3)
        image4.addGestureRecognizer(recognizer4)
        image5.addGestureRecognizer(recognizer5)
        image6.addGestureRecognizer(recognizer6)
        image7.addGestureRecognizer(recognizer7)
        image8.addGestureRecognizer(recognizer8)
        image9.addGestureRecognizer(recognizer9)
        
        
        imageArray = [image1, image2, image3, image4, image5, image6, image7, image8, image9]
        
        hideImage()
        
    }
    
    @objc func hideImage() {
        for image in imageArray {
            image.isHidden = true
            
        }
        let random = Int(arc4random_uniform(UInt32(imageArray.count - 1)))
        imageArray[random].isHidden = false
    }
    
    @objc func tapCount() {
        tapCounter += 1
        gameScoreLabel.text = "Score: \(tapCounter)"
        
    }

    
    @objc func timerFunction() {
        
        //high-score
        
        if tapCounter > highScore {
            highScore = tapCounter
            highScoreLabel.text = "High-Score: \(highScore)"
            UserDefaults.standard.set(highScore, forKey: "")
        }
        
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter == -1 {
            timer.invalidate()
            hideTimer.invalidate()
            timeLabel.text = "Time's Over"
            let alert = UIAlertController(title: "Finish", message: "Time's Over", preferredStyle: UIAlertController.Style.alert)
            let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel) { UIAlertAction in print("cancel clicked")
            }
            let retryButton = UIAlertAction(title: "Retry", style: UIAlertAction.Style.default) { UIAlertAction in
                self.tapCounter = 0
                self.gameScoreLabel.text = "Score: \(self.counter)"
                self.counter = 10
                self.timeLabel.text = String(self.counter)
                
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerFunction), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.hideImage), userInfo: nil, repeats: true)
                
                
            }
            alert.addAction(cancelButton)
            alert.addAction(retryButton)

            
            self.present(alert, animated: true, completion: nil)
            for image in imageArray {
                image.isHidden = true
                
            }


            
        }
    }



}
