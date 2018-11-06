//
//  ColorFactory.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//

import UIKit

enum ColorStyle {
    case red
    case blue
    case black
}

class ColorFactory: NSObject {

    class func createCar(with style: ColorStyle) -> Car {
        
        switch style {
        case .red:
            return RedCar()
            
        case .blue:
            return BlueCar()
            
        case .black:
            return BlackCar()
        }
        
    }
    
}
