import XCTest

@testable import Base58

final class Base58Tests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Base58().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
