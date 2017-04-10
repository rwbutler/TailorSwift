//
//  CollectionAdditions.swift
//  Pods
//
//  Created by Ross Butler on 4/1/17.
//
//

import Foundation

extension Collection {
    
    // swiftlint:disable:next variable_name
    internal func _expectEnd<C: Collection>(of s: C, is i: C.Index) {
        _debugPrecondition(
            i == s.endIndex,
            "invalid Collection: count differed in successive traversals")
    }
    
    public func mapDistinct<T: Equatable>(_ transform: (Iterator.Element) throws -> T
        ) rethrows -> [T] {
        
        let count: Int = numericCast(self.count)
        if isEmpty {
            return []
        }
        
        var result = ContiguousArray<T>()
        result.reserveCapacity(count)
        
        var i = self.startIndex
        
        for _ in 0..<count {
            let transformed = try transform(self[i])
            if !result.contains(where: { $0 == transformed }) {
                result.append(transformed)
            }
            formIndex(after: &i)
        }
        
        _expectEnd(of: self, is: i)
        return Array(result)
    }
    
}
