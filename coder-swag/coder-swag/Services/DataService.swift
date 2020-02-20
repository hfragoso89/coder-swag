//
//  DataService.swift
//  coder-swag
//
//  Created by Fragoso, Hector on 2/18/20.
//  Copyright © 2020 Fragoso, Hector. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HODDIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$18", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Hat Snapback", price: "$20", imageName: "hat04.png")
    ]
    
    private let hoddies = [
        Product(title: "Devslopes Logo Hoohie Grey", price: "$32", imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoohie Red", price: "$32", imageName: "hoodie02.png"),
        Product(title: "Devslopes Hoohie Grey", price: "$35", imageName: "hoodie03.png"),
        Product(title: "Devslopes Hoohie Black", price: "$32", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo Shirt Black", price: "$18", imageName: "shirt01.png"),
        Product(title: "Devslopes Badge Shirt Light Grey", price: "$19", imageName: "shirt02.png"),
        Product(title: "Devslopes Logo Shirt Red", price: "$18", imageName: "shirt03.png"),
        Product(title: "Hustle Delegate Grey", price: "$18", imageName: "shirt04.png"),
        Product(title: "Kickflip Studios Black", price: "$20", imageName: "shirt05.png")
    ]
    
    private let digitalGoods = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title:String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
            return getHats()
        case "HODDIES":
            return getHoddies()
        case "DIGITALGOODS":
            return getDigitalGoods()
        default:
            return [Product]()
        }
    }
    
    private func getHats() -> [Product] {
        return hats
    }
    
    private func getHoddies() -> [Product] {
        return hoddies
    }
    
    private func getShirts() -> [Product] {
        return shirts
    }
    
    private func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
}
