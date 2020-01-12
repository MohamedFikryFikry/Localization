//
//  LoginVC.swift
//  tantawy_Localization
//
//  Created by mohamed on 1/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func PressLogin(_ sender: Any) {
        let VC = UIStoryboard(name: "Home", bundle: nil).instantiateViewController(identifier: "HomeVC")as! HomeVC
        present(VC, animated: true, completion: nil)
    }
    
}
