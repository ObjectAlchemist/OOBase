//
//  DoWritableStringSetSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableStringSetSpec: XCTestCase {

    func testGIVEN_ATargetWithoutAValueAndANewValue_WHEN_Execute_THEN_SourceValueIsNewValue() {
        // GIVEN
        let target = OOWritableStringFake()
        let newValue = OOStringFake()
        let object = DoWritableStringSet(newValue, to: target)
        // WHEN
        object.execute()
        // THEN
        XCTAssertEqual(newValue.value, target.value)
    }

}
