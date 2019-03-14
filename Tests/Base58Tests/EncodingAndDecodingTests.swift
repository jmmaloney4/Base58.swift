import XCTest

@testable import Base58

final class EncodingAndDecodingTests: XCTestCase {

    func testEncodingAndDecoding() {
        XCTAssertEqual("Man".base58EncodedStringToBytes().base58EncodedString()!, "Man")

    }

    static var allTests = [
        ("testEncodingAndDecoding", testEncodingAndDecoding),
    ]
}
