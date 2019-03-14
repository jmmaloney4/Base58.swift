import XCTest

@testable import Base58

final class ArrayWithUInt8Tests: XCTestCase {

    func testBase58EncodedString() {
        XCTAssertEqual([20].base58EncodedString()!, "M")

    }

    static var allTests = [
        ("testBase58EncodedString", testBase58EncodedString),
    ]
}
