//
//  FishServices.swift
//  plasticFishes-mvc
//
//  Created by Abraham Quezada on 14/09/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import Foundation

struct FishService {
    static func list_all() -> [Fish] {
        let decoder = JSONDecoder()
        debugPrint(DataSource().fishes)
        let result = try? decoder.decode([Fish].self, from: DataSource().fishes)
        return result ?? []
    }
}
