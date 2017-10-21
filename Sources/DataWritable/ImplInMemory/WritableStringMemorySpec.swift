//
//  WritableStringMemorySpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableStringMemorySpec: XCTestCase {

    func testGIVEN_AnObjectWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = WritableStringMemory("value")
        // WHEN
        // THEN
        XCTAssertTrue(object.hasValue)
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_GetValue_THEN_GetValueReturnsInitialValue() {
        // GIVEN
        let object = WritableStringMemory("value")
        // WHEN
        // THEN
        XCTAssertEqual(object.value, "value")
    }
    
    func testGIVEN_AnObjectWithoutAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableStringMemory()
        // WHEN
        object.value = "value"
        // THEN
        XCTAssertEqual(object.value, "value")
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableStringMemory("value")
        // WHEN
        object.value = "newvalue"
        // THEN
        XCTAssertEqual(object.value, "newvalue")
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_RemoveValue_THEN_HasValueReturnsFalse() {
        // GIVEN
        let object = WritableStringMemory("value")
        // WHEN
        object.remove()
        // THEN
        XCTAssertFalse(object.hasValue)
    }

}
