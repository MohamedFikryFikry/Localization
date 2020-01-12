//
//  RoundedButton.swift
//  Golden Store
//
//  Created by Abdallah Nader on 4/17/18.
//  Copyright © 2018 Mohammed Elnaggar. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: CustomButton {

    @IBInspectable var cornerRaduis: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRaduis
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = cornerRaduis
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.layer.cornerRadius = cornerRaduis
    }

}
