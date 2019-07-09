//
//  StringAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 1/22/19.
//

import Foundation

extension String {

    /// Whether or not the `String` is __not__ empty.
    /// returns: A `Bool` indicating whether or not the `String` is __not__ empty.
    public var isNotEmpty: Bool {
        return !isEmpty
    }
    
    /// Case insensitive comparison of Strings.
    public func equalsIgnoreCase(_ rhs: String) -> Bool {
        let lhs = self.lowercased()
        return lhs == rhs.lowercased()
    }

}
