// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swift-web-frontend",
    products: [
        .library(name: "WebBase", targets: ["WebBase"]),
        .library(name: "WebHTML", targets: ["WebHTML"]),
        .library(name: "WebHTMX", targets: ["WebHTMX"]),
        .library(name: "WebSVG", targets: ["WebSVG"]),
        .library(name: "WebUI", targets: ["WebUI"]),
    ],
    targets: [
        .target(name: "WebBase"),
        .target(name: "WebHTML", dependencies: [.target(name: "WebBase")]),
        .target(name: "WebHTMX", dependencies: [.target(name: "WebHTML")]),
        .target(name: "WebSVG", dependencies: [.target(name: "WebBase")]),
        .target(name: "WebUI", dependencies: [.target(name: "WebHTMX"), .target(name: "WebSVG")]),

        // Tests
        .testTarget(name: "WebBaseTests", dependencies: ["WebBase"]),
        .testTarget(name: "WebHTMLTests", dependencies: ["WebHTML"]),
        .testTarget(name: "WebHTMXTests", dependencies: ["WebHTMX"]),
        .testTarget(name: "WebSVGTests", dependencies: ["WebSVG"]),
        .testTarget(name: "WebUITests", dependencies: ["WebUI"]),
    ]
)
