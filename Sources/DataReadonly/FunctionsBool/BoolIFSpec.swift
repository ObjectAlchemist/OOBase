//
//  BoolIFSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class BoolIFSpec: XCTestCase {

    func testGIVEN_ATrueCondition_WHEN_GetValue_THEN_PrimaryValueIsReturned() {
        // GIVEN
        let primary = OOBoolFake(true)
        let secondary = OOBoolFake(false)
        let object = BoolIF(OOBoolFake(true), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, primary.value)
    }

    func testGIVEN_AFalseCondition_WHEN_GetValue_THEN_SecondaryValueIsReturned() {
        // GIVEN
        let primary = OOBoolFake(true)
        let secondary = OOBoolFake(false)
        let object = BoolIF(OOBoolFake(false), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, secondary.value)
    }
    
}
