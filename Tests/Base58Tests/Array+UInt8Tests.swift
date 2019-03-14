import XCTest

@testable import Base58

final class ArrayWithUInt8Tests: XCTestCase {

    func testBase58EncodedString() {
        XCTAssertEqual([20].base58EncodedString()!, "M")
        XCTAssertEqual([255, 254, 253, 252].base58EncodedString()!, "7YXVWT")

    }

    static var allTests = [
        ("testBase58EncodedString", testBase58EncodedString),
    ]
}
