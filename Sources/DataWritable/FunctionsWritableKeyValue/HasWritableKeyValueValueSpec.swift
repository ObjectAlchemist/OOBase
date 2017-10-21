//
//  HasWritableKeyValueValueSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class HasWritableKeyValueValueSpec: XCTestCase {

    func testGIVEN_ASourceWithoutAValue_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = HasWritableKeyValueValue(OOWritableKeyValueFake(), at: OOStringFake("key"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertFalse(result)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_GetValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = HasWritableKeyValueValue(OOWritableKeyValueFake(["key":"value"]), at: OOStringFake("key"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertTrue(result)
    }

}
