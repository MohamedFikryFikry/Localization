//
//  CustomLabel.swift
//  yalabia
//
//  Created by ahmed tantawy on 8/22/19.
//  Copyright © 2019 ahmed tantawy. All rights reserved.
//

import UIKit
@IBDesignable
class CustomLabel: UILabel {
    
    
    private var _arabicText = ""
    private var _englishText = ""
    
    @IBInspectable var arabicText : String {
        set(value){
            _arabicText = value
        }
        get {
            return _arabicText
        }
        
    }
    
    @IBInspectable var englishText : String  {
        set(value){
            _englishText = value
        }
        get{
            return _englishText
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        let lang = Language.currentLanguage()
           
        
        if lang == "ar" {
            self.text = _arabicText
            
        }else{
            self.text = _englishText
            
        }
        
        self.font = UIFont(name: "Cairo", size: self.font.pointSize)
    }

}
