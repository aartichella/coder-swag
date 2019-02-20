//
//  DataService.swift
//  coder-swag
//
//  Created by Aarti Chella on 2/7/19.
//  Copyright © 2019 aarti. All rights reserved.
//

import Foundation

class DataService{
    
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(name: "Devslopes Logo Graphic Beanie black", price: "$20", imageName: "hat01.png"),
        Product(name: "Devslopes Logo Graphic Hat black", price: "$21", imageName: "hat02.png"),
        Product(name: "Devslopes Logo Graphic Hat white", price: "$22", imageName: "hat03.png"),
        Product(name: "Devslopes Logo Graphic Hat grey", price: "$23", imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(name: "Devslopes Logo Hoodie Black", price: "$20", imageName: "hoodie01.png"),
        Product(name: "Devslopes Logo Hoodie Red", price: "$25", imageName: "hoodie02.png"),
        Product(name: "Devslopes Logo Hoodie Grey", price: "$23", imageName: "hoodie03.png"),
        Product(name: "Devslopes Logo Hoodie OG", price: "$30", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(name: "Devslopes Logo T-Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(name: "Devslopes Logo T-Shirt Red", price: "$28", imageName: "shirt02.png"),
        Product(name: "Devslopes Logo T-Shirt Grey", price: "$18", imageName: "shirt03.png"),
        Product(name: "Devslopes Logo T-Shirt Delicate Grey", price: "$15", imageName: "shirt04.png"),
        Product(name: "Devslopes Logo T-Shirt Studio", price: "$18", imageName: "shirt05.png")
    ]
    
    private let digitalgoods = [Product]()
    
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRT":
            return getShirts()
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getShirts() ->[Product]{
        return shirts
        
    }
    func getHats() ->[Product]{
        return hats
    }
    func getHoodies() ->[Product]{
        return hoodies
        
    }
    func getDigitalGoods() ->[Product]{
        return digitalgoods
    }
}
