//
//  WritableFloatFromWritableKeyValueSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableFloatFromWritableKeyValueSpec: XCTestCase {

    func testGIVEN_ASourceWithoutAValue_WHEN_CheckHasValue_THEN_FalseIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake()
        let object = WritableFloatFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.hasValue
        // THEN
        XCTAssertFalse(result)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_CheckHasValue_THEN_TrueIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":Float(1)])
        let object = WritableFloatFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.hasValue
        // THEN
        XCTAssertTrue(result)
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_GetValue_THEN_ValueIsReturned() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":Float(1)])
        let object = WritableFloatFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 1)
    }
    
    func testGIVEN_ASourceWithoutAValue_WHEN_SetValue_THEN_ValueHasBeenSet() {
        // GIVEN
        let source = OOWritableKeyValueFake()
        let object = WritableFloatFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        object.value = Float(1)
        // THEN
        XCTAssertEqual(source.value(for: "key") as! Float, Float(1))
    }
    
    func testGIVEN_ASourceWithAValue_WHEN_RemoveValue_THEN_ValueIsRemoved() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":Float(1)])
        let object = WritableFloatFromWritableKeyValue(source, at: OOStringFake("key"))
        // WHEN
        object.remove()
        // THEN
        XCTAssertFalse(source.hasValue(for: "key"))
    }

}
