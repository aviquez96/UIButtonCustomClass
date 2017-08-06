//
//  BounceButton.swift
//  DesignButton
//
//  Created by Adrian Viquez on 2017-08-06.
//  Copyright © 2017 Adrian Viquez. All rights reserved.
//

import UIKit

//PURPOSE: Function that enables bounce animation for buttons
class BounceButton: UIButton {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //Momentarily transofmrs the button by the amount provided in x and y (>1)
        self.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 6, options: .allowUserInteraction, animations: {
              
            //Resets the button back to its default (identity)
            self.transform = CGAffineTransform.identity
            
        }, completion: nil)
        
        //Allows to keep the original functionality of the inherited class
        super.touchesBegan(touches, with: event)
        
    }

}
