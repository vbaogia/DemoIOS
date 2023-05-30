//
//  ApiResponse.swift
//  BaoFood
//
//  Created by GiaBao on 14/04/2023.
//

import Foundation

struct ApiResponse<T:Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
}
