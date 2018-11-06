//
//  AdapterData.swift
//  DesignPattern
//
//  Created by Peter Jin on 2018/11/6.
//  Copyright © 2018 Peter. All rights reserved.
//

import UIKit

class ItemData {
    var pic = UIImage()
    var productName = ""
    var salePrice : Double = 0
}

extension ItemData: AdapterProtocol {
    var image: UIImage {
        return pic
    }
    
    var name: String {
        return productName
    }
    
    var price: Double {
        return salePrice
    }
}

class ContentData {
    var picImage = UIImage()
    var title = ""
    var minPrice : Double = 0
}

extension ContentData: AdapterProtocol {
    var image: UIImage {
        return picImage
    }
    
    var name: String {
        return title
    }
    
    var price: Double {
        return minPrice
    }
}
