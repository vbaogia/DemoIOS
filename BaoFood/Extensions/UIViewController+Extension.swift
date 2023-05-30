//
//  UIViewController+Extension.swift
//  BaoFood
//
//  Created by GiaBao on 10/04/2023.
//

import Foundation
import UIKit

extension UIViewController {
    static var identifier: String {
        return String(describing: self)
    }
    
    static func instantiate() -> Self {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return  storyboard.instantiateViewController(withIdentifier: identifier) as! Self
    }
}
