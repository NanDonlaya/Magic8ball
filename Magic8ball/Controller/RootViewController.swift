//
//  RootViewController.swift
//  Magic8ball
//
//  Created by Donlaya on 2/12/2561 BE.
//  Copyright © 2561 Donlaya. All rights reserved.
//

import UIKit
import Localize_Swift

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setLanguage() {
        
        let alert = UIAlertController(title: "hello", message: "choose your language", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "ไทย", style: .default, handler: { action in
            print("THAI LANGUAGE")
            Localize.setCurrentLanguage("th")
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "main") as? ViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }))
        alert.addAction(UIAlertAction(title: "English", style: .default, handler: { action in
            print("ENGLISH LANGUAGE")
            Localize.setCurrentLanguage("en")
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "main") as? ViewController
            self.navigationController?.pushViewController(vc!, animated: true)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func welcomeClicked(_ sender: UIButton) {
        
        setLanguage()
    }
}
