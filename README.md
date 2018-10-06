![TailorSwift](https://github.com/rwbutler/TailorSwift/raw/master/TailorSwift.png)

[![CI Status](http://img.shields.io/travis/rwbutler/TailorSwift.svg?style=flat)](https://travis-ci.org/rwbutler/TailorSwift)
[![Version](https://img.shields.io/cocoapods/v/TailorSwift.svg?style=flat)](http://cocoapods.org/pods/TailorSwift)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/TailorSwift.svg?style=flat)](http://cocoapods.org/pods/TailorSwift)
[![Platform](https://img.shields.io/cocoapods/p/TailorSwift.svg?style=flat)](http://cocoapods.org/pods/TailorSwift)

Tailor the Swift language to your needs by choosing from a number of extensions comprising useful functions missing from the core libraries. Available as a Cocoapod for ease of inclusion into your projects.


* CollectionAdditions - Map directly to an array of distinct elements instead of converting to an intermediate Set.
* DictionaryAdditions - Instantiate a Swift dictionary from an array of tuples.
* NSAttributedStringAdditions - Trim attributed strings in the same way as would a regular string. [Details](https://medium.com/@rwbutler/trimming-nsattributedstring-b8c1e58ac0a)
* UIColorAdditions - UIColor extension for getting a lighter / darker shade of a given colour. [Details](https://medium.com/@rwbutler/uicolor-extension-for-getting-a-lighter-darker-shade-of-a-given-colour-b1a57931f730)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation
### Cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager which integrates dependencies into your Xcode workspace. To install it using [RubyGems](https://rubygems.org/) run:

```
gem install cocoapods
```

To install TailorSwift using Cocoapods, simply add the following line to your Podfile:

```
pod "TailorSwift"
```

Then run the command:

```
pod install
```

For more information [see here](https://cocoapods.org/#getstarted).

### Carthage

Carthage is a dependency manager which produces a binary for manual integration into your project. It can be installed via [Homebrew](https://brew.sh/) using the commands:

```
brew update
brew install carthage
```

In order to integrate TailorSwift into your project via Carthage, add the following line to your project's Cartfile:

```
github "rwbutler/TailorSwift"
```

From the macOS Terminal run `carthage update --platform iOS` to build the framework then drag `TailorSwift.framework` into your Xcode project.

For more information [see here](https://github.com/Carthage/Carthage#quick-start).

## Author

Ross Butler

## License

TailorSwift is available under the MIT license. See the [LICENSE file](./LICENSE) for more info.

## Additional Software
### Frameworks

* [Connectivity](https://github.com/rwbutler/Connectivity) - Improves on Reachability for determining Internet connectivity in your iOS application.
* [Skylark](https://github.com/rwbutler/Skylark) - Fully Swift BDD testing framework for writing Cucumber scenarios using Gherkin syntax.
* [TailorSwift](https://github.com/rwbutler/TailorSwift) - A collection of useful Swift Core Library / Foundation framework extensions.
* [TypographyKit](https://github.com/rwbutler/TypographyKit) - Consistent & accessible visual styling on iOS with Dynamic Type support.

### Tools
* [Palette](https://github.com/rwbutler/TypographyKitPalette) - Makes your [TypographyKit](https://github.com/rwbutler/TypographyKit) color palette available in Xcode Interface Builder.


[Connectivity](https://github.com/rwbutler/Connectivity)          |  [Skylark](https://github.com/rwbutler/Skylark) | [TypographyKit](https://github.com/rwbutler/TypographyKit) | [Palette](https://github.com/rwbutler/TypographyKitPalette)
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
[![Connectivity](https://github.com/rwbutler/Connectivity/raw/master/ConnectivityLogo.png)](https://github.com/rwbutler/Connectivity)   | [![Skylark](https://github.com/rwbutler/Skylark/raw/master/SkylarkLogo.png)](https://github.com/rwbutler/Skylark) |  [![TypographyKit](https://github.com/rwbutler/TypographyKit/raw/master/TypographyKitLogo.png)](https://github.com/rwbutler/TypographyKit) | [![Palette](https://github.com/rwbutler/TypographyKitPalette/raw/master/PaletteLogo.png)](https://github.com/rwbutler/TypographyKitPalette)