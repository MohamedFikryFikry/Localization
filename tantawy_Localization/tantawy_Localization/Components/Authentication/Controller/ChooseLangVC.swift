//
//  ChooseLangVC.swift
//  tantawy_Localization
//
//  Created by mohamed on 1/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

class ChooseLangVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func PressEnglish(_ sender: Any) {
       
        Language.setAppLanguage(lang: "en")
        
        
        
        UIView.appearance().semanticContentAttribute = .forceLeftToRight
        
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let vc = UIStoryboard(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "ChooseLangVC")
        
        appDelegate.window?.rootViewController = vc
        
    }

    @IBAction func PressArabic(_ sender: Any) {
        
        Language.setAppLanguage(lang: "ar")
        
        
        
        UIView.appearance().semanticContentAttribute = .forceRightToLeft
        
        let appDelegate =  UIApplication.shared.delegate as! AppDelegate
        
        let vc = UIStoryboard(name: "Authentication", bundle: nil).instantiateViewController(withIdentifier: "ChooseLangVC")
        
        appDelegate.window?.rootViewController = vc
     
    }
    @IBAction func goLogin(_ sender:Any)
    {
        let VC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")as! LoginVC
        present(VC, animated: true, completion: nil)
    }
}
