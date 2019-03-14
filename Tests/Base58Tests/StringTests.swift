import XCTest

@testable import Base58

final class StringTests: XCTestCase {

    func testDecode() {
        XCTAssertEqual("M".decode(), [20])

    }

    static var allTests = [
        ("testDecode", testDecode),
    ]
}
