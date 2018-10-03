//
//  ItemStore.swift
//  Homepwner
//
//  Created by Abraham Quezada on 10/3/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import UIKit

class ItemStore{
    var allItems = [Item]()
    
    @discardableResult func createItem() -> Item{
        let newItem = Item(random: true)
        allItems.append(newItem)
        
        return newItem
    }
    
    init(){
        for _ in 0..<5{
            createItem()
        }
    }
}
