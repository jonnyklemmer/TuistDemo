import ProjectDescription

let project = Project(
    name: "TuistDemoApp",
    targets: [
        .target(
            name: "TuistDemoApp",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.App",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ]
                ]
            ),
            sources: ["App/Sources/**"],
            resources: ["App/Resources/**"],
            dependencies: [
                .external(name: "TuistDemoFramework")
            ]
        ),
        .target(
            name: "TuistDemoAppTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.AppTests",
            infoPlist: .default,
            sources: ["App/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TuistDemoApp")]
        ),
    ]
)
