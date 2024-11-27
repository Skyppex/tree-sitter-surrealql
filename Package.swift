// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSurrealQL",
    products: [
        .library(name: "TreeSitterSurrealQL", targets: ["TreeSitterSurrealQL"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterSurrealQL",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterSurrealQLTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterSurrealQL",
            ],
            path: "bindings/swift/TreeSitterSurrealQLTests"
        )
    ],
    cLanguageStandard: .c11
)
