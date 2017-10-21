//
//  FloatIFSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class FloatIFSpec: XCTestCase {

    func testGIVEN_ATrueCondition_WHEN_GetValue_THEN_PrimaryValueIsReturned() {
        // GIVEN
        let primary = OOFloatFake(1)
        let secondary = OOFloatFake(2)
        let object = FloatIF(OOBoolFake(true), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, primary.value)
    }
    
    func testGIVEN_AFalseCondition_WHEN_GetValue_THEN_SecondaryValueIsReturned() {
        // GIVEN
        let primary = OOFloatFake(1)
        let secondary = OOFloatFake(2)
        let object = FloatIF(OOBoolFake(false), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, secondary.value)
    }

}
