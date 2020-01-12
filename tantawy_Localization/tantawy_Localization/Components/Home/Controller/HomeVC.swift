//
//  HomeVC.swift
//  tantawy_Localization
//
//  Created by mohamed on 1/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    
    @IBOutlet var btn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if Language.currentLanguage() == "ar"{
            btn.transform = CGAffineTransform(scaleX: -1, y: 1)
        }
    }
    
    @IBAction func PressBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func PressShowAlert(_ sender: Any) {
        
        
        
        if Language.currentLanguage() == "en"{
            Alert.showAlertOnVC(target: self, title: "Hello", message: "Hello My Name Is Mohamed", action_title: "OK")
        }else{
            Alert.showAlertOnVC(target: self, title: "مرحبا", message: "مرحبا اسمي محمد", action_title: "حسنا")
        }
        
    }
    
}
