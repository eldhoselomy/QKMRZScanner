// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QKMRZScanner",
    platforms: [.iOS(.v11)],
    products: [
        .library(name: "QKMRZScanner", targets: ["QKMRZScanner"]),
    ],
    dependencies: [
        .package(url: "https://github.com/eldhoselomy/QKMRZParser.git", revision: "517a375865b023cc4c73a09a83ed253133dc3c74"),
        .package(url: "https://github.com/eldhoselomy/SwiftyTesseract.git", branch: "develop")
    ],
    targets: [
        .target(
            name: "QKMRZScanner",
            dependencies: ["QKMRZParser", "SwiftyTesseract"],
            resources: [.copy("Resources/tessdata")],
            swiftSettings: [
                .unsafeFlags(["-enable-library-evolution"])
            ]
        )
    ]
)
