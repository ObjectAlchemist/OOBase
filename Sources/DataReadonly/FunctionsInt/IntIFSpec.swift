//
//  IntIFSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class IntIFSpec: XCTestCase {

    func testGIVEN_ATrueCondition_WHEN_GetValue_THEN_PrimaryValueIsReturned() {
        // GIVEN
        let primary = OOIntFake(1)
        let secondary = OOIntFake(2)
        let object = IntIF(OOBoolFake(true), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, primary.value)
    }
    
    func testGIVEN_AFalseCondition_WHEN_GetValue_THEN_SecondaryValueIsReturned() {
        // GIVEN
        let primary = OOIntFake(1)
        let secondary = OOIntFake(2)
        let object = IntIF(OOBoolFake(false), THEN: primary, ELSE: secondary)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, secondary.value)
    }

}
