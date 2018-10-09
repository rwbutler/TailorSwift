//
//  UIButtonAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 10/9/18.
//

extension UIButton {
    
    /// Default debounce delay for UIButton taps. Allows delay to be updated globally.
    static var debounceDelay: Double = 0.5

    /// Debounces button taps with the specified delay.
    func debounce(delay: Double = UIButton.debounceDelay) {
        isEnabled = false
        let deadline = DispatchTime.now() + delay
        DispatchQueue.main.asyncAfter(deadline: deadline) { [weak self] in
            self?.isEnabled = true
        }
    }
}
