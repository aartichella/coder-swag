//
//  Product.swift
//  coder-swag
//
//  Created by Aarti Chella on 2/9/19.
//  Copyright © 2019 aarti. All rights reserved.
//

import Foundation

struct Product{
    
    private (set) public var name: String
    private (set) public var price: String
    private (set) public var imageName: String
    
    init(name: String, price:String, imageName:String) {
        self.name = name
        self.price = price
        self.imageName = imageName
        
    }
}
