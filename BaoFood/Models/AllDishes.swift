//
//  AllDishes.swift
//  BaoFood
//
//  Created by GiaBao on 15/04/2023.
//

import Foundation

struct AllDishes: Decodable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
