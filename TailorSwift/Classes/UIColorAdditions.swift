//
//  ColorAdditions.swift
//  Pods
//
//  Created by Ross Butler on 4/12/17.
//
//

import Foundation
import UIKit

extension UIColor {
    
    public enum Lightness {
        
        private static let lightScalingFactor: Double       = 1.25
        private static let lighterScalingFactor: Double     = 1.5
        private static let lightestScalingFactor: Double    = 1.75
        private static let whiteScalingFactor: Double       = Double.greatestFiniteMagnitude
        
        case lightness(scalingFactor: Double)
        case light
        case lighter
        case lightest
        case white
        
        fileprivate var scale: Double {
            switch self {
            case .lightness(let scalingFactor):
                return scalingFactor
            case .light:
                return Lightness.lightScalingFactor
            case .lighter:
                return Lightness.lighterScalingFactor
            case .lightest:
                return Lightness.lightestScalingFactor
            case .white:
                return Lightness.whiteScalingFactor
            }
        }
    }
    
    public enum Darkness {
        
        private static let darkScalingFactor: Double    = 0.75
        private static let darkerScalingFactor: Double  = 0.5
        private static let darkestScalingFactor: Double = 0.25
        private static let blackScalingFactor: Double   = 0.0
        
        case darkness(Double)
        case dark
        case darker
        case darkest
        case black
        
        fileprivate var scale: Double {
            switch self {
            case .darkness(let scalingFactor):
                return scalingFactor
            case .dark:
                return Darkness.darkScalingFactor
            case .darker:
                return Darkness.darkerScalingFactor
            case .darkest:
                return Darkness.darkestScalingFactor
            case .black:
                return Darkness.blackScalingFactor
            }
        }
    }
    
    private func darker(darkness: Double) -> UIColor {
        guard darkness <= 1.0 else { return self }
        
        let scalingFactor: CGFloat = CGFloat(darkness)
        var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        let newR = CGFloat.maximum(r * scalingFactor, 0.0),
        newG = CGFloat.maximum(g * scalingFactor, 0.0),
        newB = CGFloat.maximum(b * scalingFactor, 0.0)
        return UIColor(red: newR, green: newG, blue: newB, alpha: 1.0)
    }
    
    private func lighter(lightness: Double) -> UIColor {
        guard lightness >= 1.0 else { return self }
        
        let scalingFactor: CGFloat = CGFloat(lightness)
        var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        let newR = CGFloat.minimum(r * scalingFactor, 1.0),
        newG = CGFloat.minimum(g * scalingFactor, 1.0),
        newB = CGFloat.minimum(b * scalingFactor, 1.0)
        return UIColor(red: newR, green: newG, blue: newB, alpha: 1.0)
    }
    
    public func shade(_ lightness: Lightness) -> UIColor {
        switch lightness {
        case .white:
            return UIColor.white
        default:
            return self.lighter(lightness: lightness.scale)
        }
    }
    
    public func shade(_ darkness: Darkness) -> UIColor {
        return self.darker(darkness: darkness.scale)
    }
}
