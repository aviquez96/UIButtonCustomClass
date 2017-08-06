//
//  DesignButton.swift
//  DesignButton
//
//  Created by Adrian Viquez on 2017-08-03.
//  Copyright © 2017 Adrian Viquez. All rights reserved.
//

//Xcode Source Control Commit Test 1.0

import UIKit

//Custom Class for Button, which derives from UIButton (now, inheriting from BounceButton)
@IBDesignable class UICustomButton: BounceButton {

    
    //PURPOSE: allows to modify the border width
    @IBInspectable var borderWidth : CGFloat = 0.0 {
        
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    //PURPOSE: allows to modify the border color
    @IBInspectable var borderColor : UIColor = UIColor.clear {
    
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    //PURPOSE: allows to modify the fontColor
    @IBInspectable var fontColor: UIColor = UIColor.clear {
        didSet {
            self.tintColor = fontColor
        }
    }
    
    //PURPOSE: allows to modify the corner radius
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
    
}
