//
//  WritableKeyValuePrefixedKeysSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class WritableKeyValuePrefixedKeysSpec: XCTestCase {

    func testGIVEN_AnOriginAndAPrefix_WHEN_SetWithoutPrefix_THEN_OriginKeyHasPrefix() {
        // GIVEN
        let origin = OOWritableKeyValueFake()
        let object = WritableKeyValuePrefixedKeys(origin, prefix: OOStringFake("prefix_"))
        // WHEN
        object.set(value: "value", for: "key")
        // THEN
        XCTAssertTrue(origin.hasValue(for: "prefix_key"))
    }

    func testGIVEN_AnOriginAndAPrefix_WHEN_GetWithoutPrefix_THEN_ValueFromOriginIsReturned() {
        // GIVEN
        let object = WritableKeyValuePrefixedKeys(OOWritableKeyValueFake(["prefix_key":"value"]), prefix: OOStringFake("prefix_"))
        // WHEN
        let result = object.value(for: "key") as! String
        // THEN
        XCTAssertEqual(result, "value")
    }
    
    func testGIVEN_AnOriginAndAPrefix_WHEN_CheckExistenceWithoutPrefix_THEN_OriginIsAccessedWithPrefixedKey() {
        // GIVEN
        let object = WritableKeyValuePrefixedKeys(OOWritableKeyValueFake(["prefix_key":"value"]), prefix: OOStringFake("prefix_"))
        // WHEN
        let hasValue = object.hasValue(for: "key")
        // THEN
        XCTAssertTrue(hasValue)
    }
    
    func testGIVEN_AnOriginAndAPrefix_WHEN_RemoveWithoutPrefix_THEN_OriginIsAccessedWithPrefixedKey() {
        // GIVEN
        let origin = OOWritableKeyValueFake(["prefix_key":"value"])
        let object = WritableKeyValuePrefixedKeys(origin, prefix: OOStringFake("prefix_"))
        // WHEN
        object.remove(key: "key")
        // THEN
        XCTAssertFalse(origin.hasValue(for: "prefix_key"))
    }
    
}
