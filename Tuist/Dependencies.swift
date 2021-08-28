import ProjectDescription

let spm = SwiftPackageManagerDependencies([
    .package(url: "https://github.com/grpc/grpc-swift", .exact("1.3.0")),
], deploymentTargets: [.iOS(targetVersion: "14.0", devices: [.iphone, .ipad])])

let dependencies = Dependencies(
    swiftPackageManager: spm,
    platforms: [.iOS])
