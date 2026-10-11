// swift-tools-version: 6.4
import PackageDescription

let package = Package(
    name: "swift-trigonometry",
    platforms: [.macOS(.v27), .iOS(.v27), .tvOS(.v27), .watchOS(.v27), .visionOS(.v27)],
    products: [
        .library(name: "Trigonometry", targets: ["Trigonometry"]),
        .library(name: "Trigonometry Foundation Integration", targets: ["Trigonometry Foundation Integration"]),
        .library(name: "Trigonometry Test Support", targets: ["Trigonometry Test Support"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "Trigonometry", dependencies: [], path: "Sources/Trigonometry"),
        .target(name: "Trigonometry Foundation Integration", dependencies: [.target(name: "Trigonometry")], path: "Sources/Trigonometry Foundation Integration"),
        .target(name: "Trigonometry Test Support", dependencies: [.target(name: "Trigonometry")], path: "Tests/Support"),
        .testTarget(name: "Trigonometry Tests", dependencies: [.target(name: "Trigonometry"), .target(name: "Trigonometry Test Support")], path: "Tests/Trigonometry Tests"),
    ],
    swiftLanguageModes: [.v6]
)

for target in package.targets where ![.system, .binary, .plugin, .macro].contains(target.type) {
    target.swiftSettings = (target.swiftSettings ?? []) + [
        .strictMemorySafety(),
        .enableUpcomingFeature("ExistentialAny"),
        .enableUpcomingFeature("InternalImportsByDefault"),
        .enableUpcomingFeature("MemberImportVisibility"),
        .enableUpcomingFeature("NonisolatedNonsendingByDefault"),
        .enableUpcomingFeature("InferIsolatedConformances"),
        .enableExperimentalFeature("Lifetimes"),
        .treatAllWarnings(as: .error),
    ]
}
