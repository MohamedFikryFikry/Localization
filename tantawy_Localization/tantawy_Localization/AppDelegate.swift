//
//  AppDelegate.swift
//  tantawy_Localization
//
//  Created by mohamed on 1/8/20.
//  Copyright © 2020 mohamed. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if Language.currentLanguage() == "ar"{
            UIView.appearance().semanticContentAttribute = .forceRightToLeft
        }else{
            UIView.appearance().semanticContentAttribute = .forceLeftToRight
        }
        
        return true
    }

 

 


}

