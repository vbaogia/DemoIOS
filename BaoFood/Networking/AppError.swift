//
//  AppError.swift
//  BaoFood
//
//  Created by GiaBao on 14/04/2023.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Respone could not be decoded"
        case .unknownError:
            return "ff"
        case .invalidUrl:
            return "tim url valid"
        case .serverError(let error):
            return error
        }
    }
}
