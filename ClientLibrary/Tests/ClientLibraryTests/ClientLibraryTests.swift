import XCTest
@testable import ClientLibrary

final class ClientLibraryTests: XCTestCase {
    func testCanReadBundle() {
            XCTAssertNotNil(ClientLibrary.getContents())
            // Bundle found in:
            // - .static: $BUILD_DIR/ClientLibrary.xctest/BaseLibrary_BaseLibrary.bundle
            // - .dynamic: ! NOT FOUND !
        }
}
