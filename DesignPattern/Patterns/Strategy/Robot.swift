//
//  Robot.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//
//  策略模式：对行为的一种封装

import UIKit

protocol SweepBehavior {
    func sweep()
}

class SlowSweep: SweepBehavior {
    func sweep() {
        print("slow sweep")
    }
}

class QuickSweep: SweepBehavior  {
    func sweep() {
        print("quick sweep")
    }
}

protocol MopBehavior {
    func mop()
}

class SlowMop: MopBehavior {
    func mop() {
        print("slow mop")
    }
}

class QuickMop: MopBehavior  {
    func mop() {
        print("quick mop")
    }
}


class Robot {
    var sweep: SweepBehavior?
    var mop: MopBehavior?
}

class MiRobot: Robot {
    
    override init() {
        super.init()
        
        self.sweep = SlowSweep()
        self.mop = QuickMop()
        
    }
    
}

class MicroRobot: Robot {
    override init() {
        super.init()
        
        self.sweep = SlowSweep()
        self.mop = SlowMop()
    }
}
