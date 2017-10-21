//
//  HasWritableFloatValueSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class HasWritableFloatValueSpec: XCTestCase {

    func testGIVEN_ASourceWithoutAValue_WHEN_GetValue_THEN_FalseIsReturned() {
        // GIVEN
        let object = HasWritableFloatValue(OOWritableFloatFake())
        // WHEN
        let result = object.value
        // THEN
        XCTAssertFalse(result)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_GetValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = HasWritableFloatValue(OOWritableFloatFake(1))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertTrue(result)
    }

}
