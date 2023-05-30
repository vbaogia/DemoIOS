//
//  Order.swift
//  BaoFood
//
//  Created by GiaBao on 11/04/2023.
//

import Foundation

struct Order: Decodable {
    let id: String?
    let name: String?
    let dish: Dish?
}
