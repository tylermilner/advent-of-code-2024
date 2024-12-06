// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdventOfCode2024",
    targets: [
        .target(name: "AoCInputs", resources: [.copy("Resources/inputs/day1_example1.txt"),
                                               .copy("Resources/inputs/day1_input1.txt"),
                                               .copy("Resources/inputs/day1_input2.txt")]),
        .executableTarget(
            name: "Day1",
            dependencies: ["AoCInputs"]),
        .testTarget(
            name: "Day1Tests",
            dependencies: ["Day1"]),
        
    ]
)
