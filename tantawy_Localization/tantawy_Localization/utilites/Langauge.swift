//
//  Langauge.swift
//  OneTwo
//
//  Created by Abdallah Nader on 8/7/18.
//  Copyright © 2018 anader. All rights reserved.
//

import Foundation
        //for identify the language of app
//i have key which is stored in user default called AppleLanguage which is array contain languages
//first lang is always english "base"
class Language {
    class func currentLanguage() -> String {
        let def = UserDefaults.standard
        let langs = def.object(forKey: "AppleLanguages") as! NSArray
        let firstLang = langs.firstObject as! String
        
        return firstLang
    }
    //set language for arabic "ar"
    //i called here currentLanguage class because if it not found lang it will make english default
    class func setAppLanguage(lang: String) {
        let def = UserDefaults.standard
        def.set([lang, currentLanguage()], forKey: "AppleLanguages")
        def.synchronize()
    }
    
}
