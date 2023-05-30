//
//  String+Extension.swift
//  BaoFood
//
//  Created by GiaBao on 09/04/2023.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
