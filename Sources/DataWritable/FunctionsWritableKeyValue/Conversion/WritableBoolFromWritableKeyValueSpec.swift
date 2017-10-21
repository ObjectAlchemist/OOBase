//
//  WritableBoolFromWritableKeyValueSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableBoolFromWritableKeyValueSpec: XCTestCase {

    func testGIVEN_ASourceWithoutAValue_WHEN_CheckHasValue_THEN_FalseIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake()
        let object = WritableBoolFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.hasValue
        // THEN
        XCTAssertFalse(result)
    }

    func testGIVEN_ASourceWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":true])
        let object = WritableBoolFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.hasValue
        // THEN
        XCTAssertTrue(result)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_GetValue_THEN_ValueIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":true])
        let object = WritableBoolFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, true)
    }
    
    func testGIVEN_ASourceWithoutAValue_WHEN_SetValue_THEN_ValueHasBeenSet() {
        // GIVEN
        let source = OOWritableKeyValueFake()
        let object = WritableBoolFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        object.value = true
        // THEN
        XCTAssertEqual(source.value(for: "key") as! Bool, true)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_RemoveValue_THEN_ValueIsRemoved() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":true])
        let object = WritableBoolFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        object.remove()
        // THEN
        XCTAssertFalse(source.hasValue(for: "key"))
    }
    
}
