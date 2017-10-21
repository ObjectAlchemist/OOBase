//
//  WritableKeyValueMemorySpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableKeyValueMemorySpec: XCTestCase {

    func testGIVEN_AnObjectWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let object = WritableKeyValueMemory(["key":"value"])
        // WHEN
        // THEN
        XCTAssertTrue(object.hasValue(for: "key"))
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_GetValue_THEN_GetValueReturnsInitialValue() {
        // GIVEN
        let object = WritableKeyValueMemory(["key":"value"])
        // WHEN
        // THEN
        XCTAssertEqual(object.value(for: "key") as! String, "value")
    }
    
    func testGIVEN_AnObjectWithoutAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableKeyValueMemory()
        // WHEN
        object.set(value: "value", for: "key")
        // THEN
        XCTAssertEqual(object.value(for: "key") as! String, "value")
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_SetValue_THEN_GetValueReturnsNewValue() {
        // GIVEN
        let object = WritableKeyValueMemory(["key":"value"])
        // WHEN
        object.set(value: "newvalue", for: "key")
        // THEN
        XCTAssertEqual(object.value(for: "key") as! String, "newvalue")
    }
    
    func testGIVEN_AnObjectWithAValue_WHEN_RemoveValue_THEN_HasValueReturnsFalse() {
        // GIVEN
        let object = WritableKeyValueMemory(["key":"value"])
        // WHEN
        object.remove(key: "key")
        // THEN
        XCTAssertFalse(object.hasValue(for: "key"))
    }

}
