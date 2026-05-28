import XCTest
@testable import SweetEditoriOS

final class SweetEditoriOSTests: XCTestCase {
    func testNativeCoreModuleIsReExported() {
        let document = create_document_from_utf8("hello")

        XCTAssertNotEqual(document, 0)
        XCTAssertEqual(get_document_line_count(document), 1)

        free_document(document)
    }
}
