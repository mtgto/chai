// swift-tools-version: 6.2
// SPDX-License-Identifier: MIT

import PackageDescription

let package = Package(
    name: "chai",
    platforms: [
        .macOS(.v26)
    ],
    dependencies: [
        // other dependencies
        .package(
            url: "https://github.com/apple/swift-argument-parser",
            from: "1.6.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "chai",
            dependencies: [
                // other dependencies
                .product(
                    name: "ArgumentParser",
                    package: "swift-argument-parser"
                )
            ]
        )
    ]
)
