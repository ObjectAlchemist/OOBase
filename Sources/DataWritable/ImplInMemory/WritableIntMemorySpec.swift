//
//  WritableIntMemorySpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableIntMemorySpec: XCTestCase {

    func testGIVEN_AnObjectWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = WritableIntMemory(1)
        // WHEN
        // THEN
        XCTAssertTrue(object.hasValue)
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_GetValue_THEN_GetValueReturnsInitialValue() {
        // GIVEN
        let object = WritableIntMemory(1)
        // WHEN
        // THEN
        XCTAssertEqual(object.value, 1)
    }
    
    func testGIVEN_AnObjectWithoutAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableIntMemory()
        // WHEN
        object.value = 1
        // THEN
        XCTAssertEqual(object.value, 1)
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableIntMemory(1)
        // WHEN
        object.value = 2
        // THEN
        XCTAssertEqual(object.value, 2)
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_RemoveValue_THEN_HasValueReturnsFalse() {
        // GIVEN
        let object = WritableIntMemory(1)
        // WHEN
        object.remove()
        // THEN
        XCTAssertFalse(object.hasValue)
    }

}
