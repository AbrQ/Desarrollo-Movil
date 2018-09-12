//
//  RoomType.swift
//  HotelManzana
//
//  Created by Abraham Quezada on 01/08/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import Foundation

class RoomType{
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    init(id: Int, name: String, shortName: String, price: Int) {
        self.id = id
        self.name = name
        self.shortName = shortName
        self.price = price
    }
    
    static var all: [RoomType] {
        return [RoomType(id: 0, name: "Two Queens", shortName: "2Q",
                         price: 179),
                RoomType(id: 1, name: "One King", shortName: "K",
                         price: 209),
                RoomType(id: 2, name: "Penthouse Suite", shortName:
                    "PHS", price: 309)]
    }
    
}


