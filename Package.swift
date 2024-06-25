// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JPush",
    defaultLocalization: "en",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "JPush", targets: ["JPush", "JCore", "JPushExtension"]),
    ],
    targets: [
        .binaryTarget(name: "JCore", path: "XCFrameworks/JPush/jcore-noidfa-ios-4.6.2.xcframework"),
        .binaryTarget(name: "JPushExtension", path: "XCFrameworks/JPush/jpush-extension-ios-2.0.4.xcframework"),
        .binaryTarget(name: "JPush", path: "XCFrameworks/JPush/jpush-ios-5.3.0.xcframework"),
    ]
)
