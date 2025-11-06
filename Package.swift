// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DKImagePickerController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "DKImagePickerController",
            targets: ["DKImagePickerController"]),
    ],
    dependencies: [
        .package(url: "https://github.com/zhangao0086/DKCamera", branch: "master"),
        .package(url: "https://github.com/lightningkite/DKPhotoGallery", exact: "1.0.2"),
        .package(url: "https://github.com/lightningkite/TOCropViewController", branch: "main"),
    ],
    targets: [
        .target(
            name: "DKImagePickerController",
            dependencies: [
                .product(name: "DKCamera", package: "DKCamera"),
                .product(name: "DKPhotoGallery", package: "DKPhotoGallery"),
                .product(name: "TOCropViewController", package: "TOCropViewController"),
            ],
            path: "Sources")
    ]
)
