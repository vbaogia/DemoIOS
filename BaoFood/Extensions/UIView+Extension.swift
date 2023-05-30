//
//  UIView+Extension.swift
//  BaoFood
//
//  Created by GiaBao on 05/04/2023.
//

import Foundation
import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get{
            return cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
