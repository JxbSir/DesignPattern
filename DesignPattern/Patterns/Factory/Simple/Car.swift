//
//  Car.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//

import UIKit

class Car {
    func drive() {
        fatalError()
    }
}

class RedCar: Car {
    override func drive() {
        print("RedCar start to drive")
    }
}

class BlueCar: Car {
    override func drive() {
        print("BlueCar start to drive")
    }
}

class BlackCar: Car {
    override func drive() {
        print("BlackCar start to drive")
    }
}


private class CarBusiness {
    
    private func test() {
        let car = ColorFactory.createCar(with: .red)
        car.drive()
    }
    
}
