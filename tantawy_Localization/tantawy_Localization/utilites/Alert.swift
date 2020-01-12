//
//  Alert.swift
//  Golden Store
//
//  Created by Mohammed Elnaggar on 4/16/18.
//  Copyright © 2018 Mohammed Elnaggar. All rights reserved.
//

import UIKit

class Alert {
    
    class func showAlertOnVC(target: UIViewController, title: String, message: String , action_title :String) {
        let title = title
        let message = message
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: action_title.localized(), style: .default, handler: nil))
        target.present(alert, animated: true, completion: nil)
    }
    
    class func showAlert(target: UIViewController, title: String, message: String, okAction: String, actionCompletion: ((UIAlertAction) -> Void)?) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: okAction, style: .default, handler: actionCompletion))
        target.present(alert, animated: true, completion: nil)
    }
    
}



