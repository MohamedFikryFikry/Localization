//
//  ViewController.swift
//  languages
//
//  Created by mohamed on 12/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeLanguage(_ sender: Any) {
        
        if Language.currentLanguage() == "ar"{
            Language.setAppLanguage(lang: "en")
        }else{
            Language.setAppLanguage(lang: "ar")
        }
        
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc")
        
        
        
        
        appdelegate.window?.rootViewController = vc
        
        
    }
}

