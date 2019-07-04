// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "TailorSwift",
    platforms: [
        .iOS("8.0")
    ],
    products: [
        .library(
            name: "TailorSwift",
            targets: ["TailorSwift"])
    ],
    targets: [
        .target(
            name: "TailorSwift",
            path: "TailorSwift/Classes")
    ]
)
