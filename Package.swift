// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "lz4",
  products: [
    .library(name: "lz4", targets: ["lz4"])
  ],
  dependencies: [
  ],
  targets: [
    .target(
      name: "lz4",
      dependencies: [
      ],
      sources: ["lz4.c", "lz4hc.c", "xxhash.c", "lz4frame.c"],
      publicHeadersPath: "include"
      )
  ],
  cLanguageStandard: .c11
)
