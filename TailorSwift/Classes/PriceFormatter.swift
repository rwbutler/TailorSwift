//
//  PriceFormatter.swift
//  TailorSwift
//
//  Created by Ross Butler on 11/5/19.
//

import Foundation

/// Formats numeric values as prices in `String` format.
@objcMembers public class PriceFormatter: NumberFormatter {
    
    override public init() {
        super.init()
        configure()
    }
    
    required public init?(coder: NSCoder) {
        super.init(coder: coder)
        configure()
    }
    
    /// Configure the `NumberFormatter` for formatting prices.
    private func configure() {
        self.maximumFractionDigits = 2
        self.minimumFractionDigits = 2
        self.numberStyle = .currency
    }
    
    /// Convenience method for formatting a `Double` value as a price `String`.
    /// - parameter value: The value represented as `Double` to be formatted.
    /// - returns: The given value formatted as a price `String`.
    @objc(stringFromDouble:)
    public func string(from value: Double) -> String? {
        let number = NSNumber(value: value)
        return string(from: number)
    }
    
    /// Convenience method for formatting a `Float` value as a price `String`.
    /// - parameter value: The value represented as `Float` to be formatted.
    /// - returns: The given value formatted as a price `String`.
    @objc(stringFromFloat:)
    public func string(from value: Float) -> String? {
        let number = NSNumber(value: value)
        return string(from: number)
    }
    
    /// Convenience method for formatting a `Int` value as a price `String`.
    /// - parameter value: The value represented as `Int` to be formatted.
    /// - returns: The given value formatted as a price `String`.
    @objc(stringFromInt:)
    public func string(from value: Int) -> String? {
        let number = NSNumber(value: value)
        return string(from: number)
    }
    
    /// Convenience method for formatting a `UInt` value as a price `String`.
    /// - parameter value: The value represented as `UInt` to be formatted.
    /// - returns: The given value formatted as a price `String`.
    @objc(stringFromUInt:)
    public func string(from value: UInt) -> String? {
        let number = NSNumber(value: value)
        return string(from: number)
    }
    
}
