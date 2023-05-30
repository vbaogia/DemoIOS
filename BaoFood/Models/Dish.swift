//
//  Dish.swift
//  BaoFood
//
//  Created by GiaBao on 10/04/2023.
//

import Foundation

struct Dish: Decodable {
    let id, name , description , image: String?
    let calories: Double?
    
    var formattedCalories: String{
        return String(format: "%.2f calories", calories ?? 0)
    }
}
