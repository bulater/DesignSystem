//
//  UIColor.swift
//  DesignSystem
//
//  Created by Булат Сагдиев on 09.02.2022.
//

import Foundation
import UIKit

enum Color: String, CaseIterable {
    case display1 = "display1"
    case display2 = "display2"
    case regular = "regular"
    case action = "action"
    case thin = "thin"
}

extension UIColor {
    convenience init(color: Color) {
        self.init(named: color.rawValue)!
    }
}
