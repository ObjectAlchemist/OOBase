//
//  BoolFromFloatSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class BoolFromFloatSpec: XCTestCase {

    func testGIVEN_AFloatBelowAccuracyAsSource_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = BoolFromFloat(OOFloatFake(0.09), accuracy: OOFloatFake(0.10))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertFalse(result)
    }

    func testGIVEN_AFloatAboveAccuracyAsSource_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = BoolFromFloat(OOFloatFake(0.11), accuracy: OOFloatFake(0.10))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertTrue(result)
    }
    
}
