//
//  AppDelegate.swift
//  languages
//
//  Created by mohamed on 12/31/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier : "vc")
        
        
        
        window?.makeKeyAndVisible()
        
        
        
        return true
    }

    // MARK: UISceneSession Lifecycle

 


}

