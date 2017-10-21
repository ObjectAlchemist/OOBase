//
//  StringFromBoolSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class StringFromBoolSpec: XCTestCase {

    func testGIVEN_FalseAsSource_WHEN_GetValue_THEN_StringFalseIsReturned() {
        // GIVEN
        let object = StringFromBool(OOBoolFake(false))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, "false")
    }
    
    func testGIVEN_TrueAsSource_WHEN_GetValue_THEN_StringTrueIsReturned() {
        // GIVEN
        let object = StringFromBool(OOBoolFake(true))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, "true")
    }

}
