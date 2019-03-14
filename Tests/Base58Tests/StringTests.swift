import XCTest

@testable import Base58

final class StringTests: XCTestCase {

    func testBase58EncodedStringToBytes() {
        XCTAssertEqual("M".base58EncodedStringToBytes(), [20])
    }

    static var allTests = [
        ("testBase58EncodedStringToBytes", testBase58EncodedStringToBytes),
    ]
}
