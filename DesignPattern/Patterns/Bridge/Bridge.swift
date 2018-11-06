//
//  Bridge.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//
//  桥接模式

import UIKit

protocol FaceEngine {
    func faceSize() -> CGSize
    func mouthRect() -> CGRect
}

class HumanFaceEngine: FaceEngine {
    func faceSize() -> CGSize {
        return CGSize(width: 100, height: 200)
    }
    
    func mouthRect() -> CGRect {
        return CGRect(x: 10, y: 20, width: 30, height: 40)
    }
}

class AnimalFaceEngine: FaceEngine {
    func faceSize() -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
    func mouthRect() -> CGRect {
        return CGRect(x: 110, y: 220, width: 330, height: 420)
    }
}

class Camera {
    var faceEngine: FaceEngine?
    
    func test() {
        guard let faceEngine = faceEngine else {
            return
        }
        
        let faceSize = faceEngine.faceSize()
        let mouthRect = faceEngine.mouthRect()
        
        print("faceSize: \(faceSize), mouthRect: \(mouthRect)")
    }
}

class BridgeBusiness {
    
    func test() {
        let cameraA = Camera()
        cameraA.faceEngine = HumanFaceEngine()
        cameraA.test()
        
        let cameraB = Camera()
        cameraB.faceEngine = AnimalFaceEngine()
        cameraB.test()
    }
    
}
