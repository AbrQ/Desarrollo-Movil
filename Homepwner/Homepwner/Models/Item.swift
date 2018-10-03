//
//  Item.swift
//  Homepwner
//
//  Created by Abraham Quezada on 10/3/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class Item: NSObject{
    var name: String
    var valueInDollars: Int
    var serialNumber: String?
    var dateCreated: NSDate
    
    init(name: String, valueInDollars: Int, serialNumber: String?){
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = NSDate()
        
        super.init()
    }
    
    convenience init(random: Bool = false){
        if random{
            let adjectives = ["Floffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, valueInDollars: randomValue, serialNumber: randomSerialNumber)
        }else{
            self.init(name: "", valueInDollars: 0, serialNumber: nil)
        }
    }
}

