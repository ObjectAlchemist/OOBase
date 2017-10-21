//
//  DoWritableFloatSetSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableFloatSetSpec: XCTestCase {

    func testGIVEN_ATargetWithoutAValueAndANewValue_WHEN_Execute_THEN_SourceValueIsNewValue() {
        // GIVEN
        let target = OOWritableFloatFake()
        let newValue = OOFloatFake()
        let object = DoWritableFloatSet(newValue, to: target)
        // WHEN
        object.execute()
        // THEN
        XCTAssertEqual(newValue.value, target.value)
    }

}
