//
//  StringFromIntSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class StringFromIntSpec: XCTestCase {

    func testGIVEN_1AsSource_WHEN_GetValue_THEN_String1IsReturned() {
        // GIVEN
        let object = StringFromInt(OOIntFake(1))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, "1")
    }

}
