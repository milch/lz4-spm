# LZ4 in SPM

This package should allow to use the [lz4](https://github.com/lz4/lz4) library in Swift Package Manager. 

## Example 

```swift
import PackageDescription

let package = Package(
	name: "Sample",
	products: [.library(name: "LibSample", targets: ["LibSample"])]
	dependencies: [
		.package(
			name: "lz4", 
			url: "https://github.com/milch/lz4", 
			.upToNextMinor(from: "1.9.3")),
		//...
	],
	targets: [
	    .target(
			name: "LibSample",
			dependencies: [.product(name: "lz4", package: "lz4")],
			// ...
		)
	]
)
```

## Updating

The way the lz4 source is organized is not directly compatible with SPM conventions. SPM expects a single `include` folder for public headers, whereas header and source files are next to each other in the lz4 repository. 
Run the `update_lz4.sh` script to copy things into the place SPM expects and check in the changes: 

```bash
./update_lz4.sh
git add Sources
```

The components which are copied are licensed under the BSD license, and the license statements are included at the top of the files.
