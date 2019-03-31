# Base58.swift

[![Build Status](https://travis-ci.com/yeeth/Base58.swift.svg?branch=master)](https://travis-ci.com/yeeth/Base58.swift) [![License](https://img.shields.io/github/license/yeeth/Base58.swift.svg)](LICENSE)

This repository implements [Base58](https://en.wikipedia.org/wiki/Base58) in Swift, based off of the implementations written by [keefertaylor](https://github.com/keefertaylor/Base58Swift) & [NeoTeo](https://github.com/NeoTeo/SwiftBase58).

## Getting Started

This library is built with the consideration of keeping it easy to include in your projects.

### Import

The `Base58.swift` package can be easily imported into your project using the `swift package manager`.

```swift
dependencies: [
    .package(url: "https://github.com/yeeth/Base58.swift.git", from: "1.0.0"),
],
targets: [
    .target(name: "MyTarget", dependencies: ["Base58"]),
]
```

## Usage

```swift

import Base58

print([20].base58EncodedString()!) // print: M
print("M".base58EncodedStringToBytes()) // print: [20]

```

## Authors

* **Dean Eigenmann** - [decanus](https://github.com/decanus)

See also the list of [contributors](https://github.com/yeeth/Base58.swift/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
