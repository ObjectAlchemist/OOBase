//
//  WritableBoolMemorySpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableBoolMemorySpec: XCTestCase {

    func testGIVEN_AnObjectWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = WritableBoolMemory(true)
        // WHEN
        // THEN
        XCTAssertTrue(object.hasValue)
    }

    func testGIVEN_AnObjectWithAValue_WHEN_GetValue_THEN_GetValueReturnsInitialValue() {
        // GIVEN
        let object = WritableBoolMemory(false)
        // WHEN
        // THEN
        XCTAssertFalse(object.value)
    }

    func testGIVEN_AnObjectWithoutAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableBoolMemory()
        // WHEN
        object.value = false
        // THEN
        XCTAssertFalse(object.value)
    }

    func testGIVEN_AnObjectWithAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableBoolMemory(true)
        // WHEN
        object.value = false
        // THEN
        XCTAssertFalse(object.value)
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_RemoveValue_THEN_HasValueReturnsFalse() {
        // GIVEN
        let object = WritableBoolMemory(true)
        // WHEN
        object.remove()
        // THEN
        XCTAssertFalse(object.hasValue)
    }
    
}
