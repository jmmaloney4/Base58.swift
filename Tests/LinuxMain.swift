import XCTest

import Base58Tests

var tests = [XCTestCaseEntry]()
tests += StringTests.allTests()
tests += ArrayWithUInt8Tests.allTests()
XCTMain(tests)
