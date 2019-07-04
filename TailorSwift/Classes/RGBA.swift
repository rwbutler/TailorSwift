//
//  RGBA.swift
//  TailorSwift
//
//  Created by Ross Butler on 11/21/18.
//

import Foundation
import UIKit

/// Represents a color defined in terms of its RGBA components.
struct RGBA {
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
    let alpha: CGFloat

    var uiColor: UIColor {
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
