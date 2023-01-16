import XCTest
@testable import BaseLibrary

final class BaseLibraryTests: XCTestCase {
    func testGetReadme() throws {
        XCTAssertNotNil(BaseLibrary.getReadme())
    }
}
