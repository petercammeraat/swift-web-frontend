// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swift-web-frontend",
    products: [
        .library(name: "WebBase", targets: ["WebBase"]),
        .library(name: "WebHtml", targets: ["WebHtml"]),
        .library(name: "WebHtmx", targets: ["WebHtmx"]),
    ],
    targets: [
        .target(name: "WebBase"),
        .target(name: "WebHtml", dependencies: [.target(name: "WebBase")]),
        .target(name: "WebHtmx", dependencies: [.target(name: "WebHtml")]),

        // Tests
        .testTarget(name: "WebBaseTests", dependencies: ["WebBase"]),
        .testTarget(name: "WebHtmlTests", dependencies: ["WebHtml"]),
        .testTarget(name: "WebHtmxTests", dependencies: ["WebHtmx"]),
    ]
)
