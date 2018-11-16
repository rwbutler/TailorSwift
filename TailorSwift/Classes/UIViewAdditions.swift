//
//  UIViewAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 10/10/18.
//

import Foundation

extension UIView {

    /// Default corner radius
    static var cornerRadius: CGFloat = 10.0

    /// Rounds specified corners with the given corner radius value.
    func roundCorners(_ corners: UIRectCorner = .allCorners, radius: CGFloat = UIView.cornerRadius) {
        if #available(iOS 11.0, *) {
            clipsToBounds = true
            layer.cornerRadius = radius
            layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
        } else if corners == .allCorners {
            clipsToBounds = true
            layer.cornerRadius = radius
        } else {
            let mask = CAShapeLayer()
            mask.path = UIBezierPath(roundedRect: bounds,
                                     byRoundingCorners: corners,
                                     cornerRadii: CGSize(width: radius, height: radius)).cgPath
            layer.mask = mask
        }
    }

}
