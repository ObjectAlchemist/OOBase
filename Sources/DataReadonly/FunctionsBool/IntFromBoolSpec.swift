//
//  IntFromBoolSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class IntFromBoolSpec: XCTestCase {

    func testGIVEN_FalseAsSource_WHEN_GetValue_THEN_0IsReturned() {
        // GIVEN
        let object = IntFromBool(OOBoolFake(false))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 0)
    }
    
    func testGIVEN_TrueAsSource_WHEN_GetValue_THEN_1IsReturned() {
        // GIVEN
        let object = IntFromBool(OOBoolFake(true))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 1)
    }

}
