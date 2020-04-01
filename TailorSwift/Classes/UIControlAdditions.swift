//
//  UIButtonAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 10/9/18.
//

import Foundation
import UIKit

public extension UIControl {

    /// Default debounce delay for UIButton taps. Allows delay to be updated globally.
    @objc static var debounceDelay: Double = 0.5
    
    /// Debounces button taps with the specified delay.
    @objc func debounce(delay: Double = UIControl.debounceDelay, siblings: [UIControl] = []) {
        let buttons = [self] + siblings
        buttons.forEach { $0.isEnabled = false }
        let deadline = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            buttons.forEach { $0.isEnabled = true }
        }
    }
    
}
