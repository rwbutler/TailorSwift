//
//  UITextFieldAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 1/23/19.
//

import Foundation

extension UITextField {
    
    /// Sets the color of the UITextField's placeholder text.
    /// - parameter color: The text color for placholder text.
    private func setPlaceholderTextColor(_ color: UIColor = .black) {
        guard let placeholderText = placeholder else { return }
        let strAttributes = [NSAttributedString.Key.foregroundColor: color]
        attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: strAttributes)
    }
    
}
