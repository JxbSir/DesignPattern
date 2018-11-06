//
//  Factory.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//
//  工厂模式：对对象的一种封装

import UIKit

class Factory {

    class func createCar() -> Car {
        fatalError()
    }
    
}


class RedFactory: Factory {
    
    override class func createCar() -> Car {
        return RedCar()
    }
    
}

class BlueFactory: Factory {
    
    override class func createCar() -> Car {
        return BlueCar()
    }
}

class BlackFactory: Factory {
    
    override class func createCar() -> Car {
        return BlackCar()
    }
}

private class CarBusiness {
    
    private func test() {
        
        let redcar = RedFactory.createCar()
        redcar.drive()
        
        let bluecar = BlueFactory.createCar()
        bluecar.drive()
        
        let blackcar = BlackFactory.createCar()
        blackcar.drive()
        
    }
    
}
