# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.2.0] - 2019-11-05
### Added
- UIButtonAdditions.swift becomes UIControlAdditions.swift for greater reuse. Support debouncing of sibling controls as well as the original UIControl.

## [2.1.0] - 2019-11-05
### Added
- `PriceFormatter` for formatting numeric values as prices in `String` format.

## [2.0.1] - 2019-07-09
### Added
- Case-insensitive comparison for method for `String` `equalsIgnoreCase(_:)`.

## [2.0.0] - 2019-07-04
### Changed
- Updated to Swift 5.0.

## [1.1.1] - 2019-07-04
### Changed
- Updated SwiftLint rules.

## [1.1.0] - 2019-07-04
### Added
- Support for Swift Package Manager using Xcode 11.0 beta.

### Changed
- `mapDistinct(_:)` renamed to `uniqueMap(_:)` to better fit with naming of `compactMap(_:)` and `flatMap(_:)`.

## [1.0.0] - 2019-01-22
### Added
- Added `isNotEmpty` property to `String` and `Collection`.

## [0.0.8] - 2018-11-21
### Added
- Int extension providing convenience property `isZero` to make code more readable over `== 0`.
### Changed
- Updated UIColorAdditions to make code more maintainable / reduce duplication.

## [0.0.7] - 2018-10-10
### Added
- UIView extension (UIViewAdditions.swift) with method roundCorners(_ corners: radius:) for rounding view corners.

## [0.0.6] - 2018-10-09
### Added
- UIButton extension (UIButtonAdditions.swift) with method debounce(delay:) for debouncing button taps.
- DictionaryAdditions new initializers for initializing from a single tuple / array of tuples.

## [0.0.5] - 2018-09-20
### Changed
- Updated project to Swift 4.2.

## [0.0.4] - 2018-08-30
### Added
- NSAttributedString extension for trimming attributed strings.

## [0.0.3] - 2018-08-18
### Added
- Support for Carthage.
### Changed
- Updated project to Swift 4.

## [0.0.2] - 2018-08-18
### Added
- UIColor extension for obtaining lighter / darker shades of colors.

## [0.0.1] - 2018-08-18
### Added
- Extension on Collection for mapping distinct elements only.
- Extension on Dictionary for instantiating from an array of tuples.
