import XCTest

@testable import Base58

final class StringTests: XCTestCase {

    func testBase58EncodedStringToBytes() {
        XCTAssertEqual("M".base58EncodedStringToBytes(), [20])
//        XCTAssertEqual("jpUz5f99p1R".base58EncodedStringToBytes(), [255, 254, 253, 252])

    }

    static var allTests = [
        ("testBase58EncodedStringToBytes", testBase58EncodedStringToBytes),
    ]
}
