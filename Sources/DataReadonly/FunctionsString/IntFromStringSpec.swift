//
//  IntFromStringSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class IntFromStringSpec: XCTestCase {

    func testGIVEN_String1AsSource_WHEN_GetValue_THEN_1IsReturned() {
        // GIVEN
        let object = IntFromString(OOStringFake("1"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 1)
    }

}
