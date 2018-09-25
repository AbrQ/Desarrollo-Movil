//
//  Fish.swift
//  plasticFishes-mvc
//
//  Created by Abraham Quezada on 14/09/18.
//  Copyright © 2018 Abraham Quezada. All rights reserved.
//

import Foundation

struct Fish: Decodable {
    let id: Int
    let name: String
    let text: String
    let apiUrlString: String
    let webUrlString: String
    let imageUrlString: String

    
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case text
        case apiUrlString = "api_url"
        case webUrlString = "web_url"
        case imageUrlString = "image_url"
    }
    
    var apiURL: URL?{
      return URL(string: apiUrlString)
    }
    
    var webURL: URL?{
        return URL(string: webUrlString)
    }
    
    var imageURL: URL?{
        return URL(string: imageUrlString)
    }
    
    var imageData: Data?{
        guard let url = imageURL else{
            return nil
        }
        do{
            return try Data(contentsOf: url)
        }catch{
            return nil
        }
    }
    
}
