//
//  Extensions.swift
//  04_Piano
//
//  Created by Jair Benítez on 15/12/18.
//  Copyright © 2018 Jair Benítez. All rights reserved.
//

import UIKit

@IBDesignable extension UIButton {
    
    @IBInspectable var borderWidth: CGFloat {
        set{
            layer.borderWidth = newValue
        }
        get{
            return layer.borderWidth
        }
    }
    
    @IBInspectable var cornerRadius : CGFloat {
        
        set{
            layer.cornerRadius = newValue
        }
        get{
            return layer.cornerRadius
        }
        
    }
    
    
    @IBInspectable var borderColor : UIColor? {
        
        set{
            guard let uiColor = newValue else {
                return
            }
            layer.borderColor = uiColor.cgColor
        }
        
        get{
            guard let color = layer.borderColor else {
                return nil
            }
            return UIColor( cgColor: color )
        }
    }
    
}