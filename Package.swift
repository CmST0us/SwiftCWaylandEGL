// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CWaylandEGL",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CWaylandEGL", 
            targets: ["CWaylandEGL"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .systemLibrary(
            name: "CWaylandEGL", 
            pkgConfig: "wayland-egl",
            providers: [
                .apt(["libwayland-egl1"])
            ]
        )
    ]
)
