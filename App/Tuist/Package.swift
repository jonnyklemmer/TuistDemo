// swift-tools-version: 6.0
import PackageDescription

#if TUIST
    import struct ProjectDescription.PackageSettings

    let packageSettings = PackageSettings(
        productTypes: [:],
        baseSettings: .settings(base: [
            "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": true
        ]),
        projectOptions: [
            "TuistDemoFramework": .options(disableSynthesizedResourceAccessors: true),
        ]
    )
#endif

let package = Package(
    name: "TuistDemoApp",
    dependencies: [
        // Root Package
        .package(path: "../..")
    ]
)
