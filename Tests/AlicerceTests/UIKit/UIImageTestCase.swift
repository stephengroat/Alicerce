import XCTest
import UIKit

@testable import Alicerce

final class UIImageTestCase: XCTestCase {

    func testOriginal_WhenHasImage_ItShouldReturnTheOriginalImage() {
        let mrMinder = imageFromFile(withName: "mr-minder", type: "png")

        let mrMinderOriginal = mrMinder.original

        XCTAssertEqual(mrMinderOriginal.renderingMode, .alwaysOriginal)
    }

    func testTemplate_WhenHasImage_ItShouldReturnTheTemplateImage() {
        let mrMinder = imageFromFile(withName: "mr-minder", type: "png")

        let mrMinderTemplate = mrMinder.template

        XCTAssertEqual(mrMinderTemplate.renderingMode, .alwaysTemplate)
    }
}
