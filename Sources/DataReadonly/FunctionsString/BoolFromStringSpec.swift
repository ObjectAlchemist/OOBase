//
//  BoolFromStringSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class BoolFromStringSpec: XCTestCase {

    func testGIVEN_ValueFalseAsSource_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = BoolFromString(OOStringFake("false"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertFalse(result)
    }
    
    func testGIVEN_ValueTrueAsSource_WHEN_GetValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = BoolFromString(OOStringFake("true"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertTrue(result)
    }

}
