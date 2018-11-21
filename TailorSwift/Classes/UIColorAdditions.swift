//
//  ColorAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 4/12/17.
//
//

import Foundation
import UIKit

extension UIColor {

    public enum Shade {
        private static let darkScalingFactor: Double    = 0.75
        private static let darkerScalingFactor: Double  = 0.5
        private static let darkestScalingFactor: Double = 0.25
        private static let blackScalingFactor: Double   = 0.0
        private static let lightScalingFactor: Double       = 1.25
        private static let lighterScalingFactor: Double     = 1.5
        private static let lightestScalingFactor: Double    = 1.75
        private static let whiteScalingFactor: Double       = Double.greatestFiniteMagnitude
        case darkness(Double)
        case dark
        case darker
        case darkest
        case black

        case lightness(scalingFactor: Double)
        case light
        case lighter
        case lightest
        case white

        fileprivate var scale: Double {
            switch self {
            case .darkness(let scalingFactor):
                return scalingFactor
            case .dark:
                return Shade.darkScalingFactor
            case .darker:
                return Shade.darkerScalingFactor
            case .darkest:
                return Shade.darkestScalingFactor
            case .black:
                return Shade.blackScalingFactor
            case .lightness(let scalingFactor):
                return scalingFactor
            case .light:
                return Shade.lightScalingFactor
            case .lighter:
                return Shade.lighterScalingFactor
            case .lightest:
                return Shade.lightestScalingFactor
            case .white:
                return Shade.whiteScalingFactor
            }
        }
    }

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

    /// Extracts RGBA components from UIColor returning a tuple of CGFloat values.
    private func rgbaComponents(from color: UIColor) -> RGBA {
        var red: CGFloat = 0.0, green: CGFloat = 0.0, blue: CGFloat = 0.0, alpha: CGFloat = 0.0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return RGBA(red: red, green: green, blue: blue, alpha: alpha)
    }

    /// Scales RGB components by the given multiplier.
    private func scaleRGBComponents(_ components: RGBA, by scalingFactor: Double) -> RGBA {
        let multiplier: CGFloat = CGFloat(scalingFactor)
        return RGBA(red: components.red * multiplier,
                    green: components.green * multiplier,
                    blue: components.blue * multiplier,
                    alpha: components.alpha)
    }

    /// Extracts RGBA components from UIColor, scaling by the given multiplier.
    private func scaledRGBComponents(from color: UIColor, by scalingFactor: Double) -> RGBA {
        let components = rgbaComponents(from: color)
        let scaledComponents = scaleRGBComponents(components, by: scalingFactor)
        return scaledComponents
    }

    public func shade(_ shade: Shade) -> UIColor {
        switch shade {
        case .black:
            return UIColor.black
        case .white:
            return UIColor.white
        case .dark, .darker, .darkest, .darkness,
             .light, .lighter, .lightest, .lightness:
            return scaledRGBComponents(from: self, by: shade.scale).uiColor
        }
    }

    public func shade(_ name: String) -> UIColor {
        if let darker = darkerShade(name) {
            return darker
        }
        if let lighter = lighterShade(name) {
            return lighter
        }
        return self
    }

    private func darkerShade(_ name: String) -> UIColor? {
        switch name {
        case "dark":
            return shade(.dark)
        case "darker":
            return shade(.darker)
        case "darkest":
            return shade(.darkest)
        default:
            return nil
        }
    }

    private func lighterShade(_ name: String) -> UIColor? {
        switch name {
        case "light":
            return shade(.light)
        case "lighter":
            return shade(.lighter)
        case "lightest":
            return shade(.lightest)
        default:
            return nil
        }
    }
}
