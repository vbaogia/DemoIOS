//
//  DishCategory.swift
//  BaoFood
//
//  Created by GiaBao on 09/04/2023.
//

import Foundation

struct DishCategory: Decodable {
    let id, name , image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
