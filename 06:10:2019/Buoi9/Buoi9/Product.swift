//
//  Product.swift
//  Buoi9
//
//  Created by Quân on 10/5/19.
//  Copyright © 2019 QuanNguyen. All rights reserved.
//

import Foundation

struct Product {
    var image:String
    var name:String
    var price:Int
}

struct Category {
    var name:String
    var products:[Product]
}
