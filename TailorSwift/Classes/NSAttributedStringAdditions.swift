//
//  NSAttributedStringAdditions.swift
//  TailorSwift
//
//  Created by Ross Butler on 8/30/18.
//

extension NSAttributedString {
    public func trimmingCharacters(in characterSet: CharacterSet) -> NSAttributedString {
        // swiftlint:disable:next force_cast
        let result = self.mutableCopy() as! NSMutableAttributedString
        while let range = result.string.rangeOfCharacter(from: characterSet),
            range.lowerBound == result.string.startIndex {
            let length = result.string.distance(from: range.lowerBound, to: range.upperBound)
            result.deleteCharacters(in: NSRange(location: 0, length: length))
        }
        while let range = result.string.rangeOfCharacter(from: characterSet, options: .backwards),
            range.upperBound == result.string.endIndex {
            let location = result.string.distance(from: result.string.startIndex, to: range.lowerBound)
            let length = result.string.distance(from: range.lowerBound, to: range.upperBound)
            result.deleteCharacters(in: NSRange(location: location, length: length))
        }
        return result
    }
}
