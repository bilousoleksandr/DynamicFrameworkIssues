// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignKit",
    platforms: [.macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DesignKit",
            type: .dynamic,
            targets: ["DesignKit"]
        ),
    ],
    targets: [
        .target(
            name: "DesignKit"),
        .testTarget(
            name: "DesignKitTests",
            dependencies: ["DesignKit"]),
    ]
)
