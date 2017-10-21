//
//  DoWritableKeyValueSetSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableKeyValueSetSpec: XCTestCase {

    func testGIVEN_ATargetWithoutAValueAndANewValue_WHEN_Execute_THEN_SourceValueIsNewValue() {
        // GIVEN
        let target = OOWritableKeyValueFake()
        let newValue = OOStringFake("value")
        let key = OOStringFake("key")
        let object = DoWritableKeyValueSet(newValue, in: target, at: key)
        // WHEN
        object.execute()
        // THEN
        XCTAssertEqual(newValue.value, target.value(for: key.value) as! String)
    }

}
