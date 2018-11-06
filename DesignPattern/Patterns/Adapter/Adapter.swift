//
//  Adapter.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//
//  适配器模式

import UIKit

private class Widget {

    func load(_ data: AdapterProtocol) {
        //do something
        print("name:\(data.name), image:\(data.image), price:\(data.price)")
    }
    
}

private class ItemBusiness {
    
    let widget = Widget()
    func test() {
        let item = ItemData()
        self.widget.load(item)
    }
}

private class ContentBusiness {
    let widget = Widget()
    
    func test() {
        let content = ContentData()
        self.widget.load(content)
    }
}
