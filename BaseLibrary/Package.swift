// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BaseLibrary",
    products: [
        .library(
            name: "BaseLibrary",
            type: .dynamic, // <-- changing this to .static or commenting out works
            targets: ["BaseLibrary"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BaseLibrary",
            dependencies: [],
            resources: [
                .copy("Resources/readme.md")
            ]
        ),
        .testTarget(
            name: "BaseLibraryTests",
            dependencies: ["BaseLibrary"]
        ),
    ]
)
