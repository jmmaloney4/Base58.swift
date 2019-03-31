import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(StringTests.allTests),
        testCase(ArrayWithUInt8Tests.allTests),
    ]
}
#endif
