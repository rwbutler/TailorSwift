//
//  DictionaryAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 4/1/17.
//
//

import Foundation

extension Dictionary {
    
    public init?(_ tuples: [(key: Key?, value: Value?)]?) {
        guard let tuples = tuples else {
            return nil
        }
        self.init(tuples)
    }
    
    public init(_ tuples: [Element]) {
        self.init()
        for (key, value) in tuples {
            updateValue(value, forKey: key)
        }
    }
    
    public init(_ tuples: [(key: Key?, value: Value?)]) {
        self.init()
        for (key, value) in tuples {
            if let key = key, let value = value {
                updateValue(value, forKey: key)
            }
        }
    }
    
    public init(_ tuples: [(key: Key, value: Value)?]) {
        self.init()
        for (key, value) in tuples.compactMap({ $0 }) {
            updateValue(value, forKey: key)
        }
    }
    
    public init(_ element: (key: Key, value: Value)?) {
        self.init()
        if let key = element?.key, let value = element?.value {
            updateValue(value, forKey: key)
        }
    }
    
}

