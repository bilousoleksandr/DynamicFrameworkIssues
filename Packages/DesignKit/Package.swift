// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignKit",
    platforms: [.macOS(.v11)],
    products: [
        .library(
            name: "DesignKit-dynamic",
            type: .dynamic,
            targets: ["DesignKit-dynamic"]
        ),
        .library(
            name: "DesignKit",
            type: .static,
            targets: ["DesignKit"]
        ),
        .library(
            name: "DesignKitWrapper",
            type: .static,
            targets: ["DesignKitWrapper"]
        )
    ],
    targets: [
        .target(
            name: "DesignKit-dynamic",
            resources: [
                .copy("Resources")
            ]
        ),
        .target(
            name: "DesignKitWrapper",
            dependencies: ["DesignKit-dynamic"],
            resources: [
                .copy("Resources")
            ]
        ),
        .target(
            name: "DesignKit",
            resources: [
                .copy("Resources")
            ]
        )
    ]
)
