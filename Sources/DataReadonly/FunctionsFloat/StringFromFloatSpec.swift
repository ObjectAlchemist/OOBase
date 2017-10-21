//
//  StringFromFloatSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class StringFromFloatSpec: XCTestCase {

    func testGIVEN_AFloatNear1AsSource_WHEN_GetValue_THEN_1IsReturned() {
        // GIVEN
        let object = StringFromFloat(OOFloatFake(1.001))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, "1.001")
    }

}
