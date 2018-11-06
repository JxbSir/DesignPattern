//
//  Decorator.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//
//  装饰者模式

import UIKit

protocol Coffee {
    var price: Double { get }
}

class NormalCoffee: Coffee {
    var price: Double {
        return 28
    }
}


class CoffeeDecorator: Coffee {
    private let coffee: Coffee
    
    init(_ coffee: Coffee) {
        self.coffee = coffee
    }
    
    var price: Double {
        return coffee.price
    }
}


class Big: CoffeeDecorator {
    override var price: Double {
        return super.price + 3
    }
}

class Vanilla: CoffeeDecorator {
    override var price: Double {
        return super.price + 3
    }
}


class CoffeeBusiness {
    
    func test() {
        let coffee = NormalCoffee()
        
        let big = Big(coffee)
        let vnailla = Vanilla(big)
        
        print("咖啡价格：\(vnailla.price)")
    }
    
}
