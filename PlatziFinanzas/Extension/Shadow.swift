//
//  Shadow.swift
//  PlatziFinanzas
//
//  Created by Jaime Uribe on 3/26/19.
//  Copyright © 2019 Jaime Uribe. All rights reserved.
//

import UIKit

extension UIView{
    
    var borderUIColor: UIColor{
        get{
            guard let color = layer.borderColor else {
                return UIColor.black
            }
            return UIColor(cgColor: color)
        }
        
        set{
            layer.borderColor = newValue.cgColor
        }
    }
}
