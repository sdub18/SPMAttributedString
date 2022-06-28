import XCTest
@testable import TestPackage

final class TestPackageTests: XCTestCase {
    // This test asserts that ids are unique even if the contents of the texts are the same
    func testUniqueIds() {
        let t1 = CoolText(attribtuedText: AttributedString(stringLiteral: "test"))
        let t2 = CoolText(attribtuedText: AttributedString(stringLiteral: "test"))
        XCTAssert(t1.id != t2.id)
    }
}
