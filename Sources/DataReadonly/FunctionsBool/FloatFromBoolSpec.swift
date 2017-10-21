//
//  FloatFromBoolSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class FloatFromBoolSpec: XCTestCase {

    func testGIVEN_FalseAsSource_WHEN_GetValue_THEN_AFloatNear0IsReturned() {
        // GIVEN
        let object = FloatFromBool(OOBoolFake(false))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 0) // comparison diff is less than 1e-15
    }

    func testGIVEN_TrueAsSource_WHEN_GetValue_THEN_AFloatNear1IsReturned() {
        // GIVEN
        let object = FloatFromBool(OOBoolFake(true))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 1) // comparison diff is less than 1e-15
    }
    
}
