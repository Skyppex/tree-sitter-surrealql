import XCTest
import SwiftTreeSitter
import TreeSitterSurrealQL

final class TreeSitterSurrealQLTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_surrealql())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading SurrealQL grammar")
    }
}
