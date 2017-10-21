//
//  BoolFromIntSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class BoolFromIntSpec: XCTestCase {

    func testGIVEN_0AsSource_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = BoolFromInt(OOIntFake(0))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertFalse(result)
    }

    func testGIVEN_Not0AsSource_WHEN_GetValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = BoolFromInt(OOIntFake(9))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertTrue(result)
    }
    
}
