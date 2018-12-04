//
//  ViewController.swift
//  Magic8ball
//
//  Created by Donlaya on 8/24/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import Localize_Swift

class ViewController: UIViewController {

    let ballImage = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    let text = ["yes".localized(), "no".localized(), "ask agin", "definitely".localized(), "may be i am not sure".localized()]
    var randomResult = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var showImage: UIImageView!
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLanguage()
    }

    @IBAction func clickedButton(_ sender: UIButton) {
        
        magicBall()
    }
    
    func magicBall() {
        
        randomResult = Int(arc4random_uniform(5))
        
        showLabel.text = text[randomResult].localized()
        showImage.image = UIImage(named: ballImage[randomResult])
    }
    
    func setLanguage() {
        
        questionLabel.text = "ask me about love".localized()
        answerButton.setTitle("answer".localized(), for: .normal)
    }
    
}

