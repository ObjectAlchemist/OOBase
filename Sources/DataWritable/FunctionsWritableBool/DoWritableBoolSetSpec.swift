//
//  DoWritableBoolSetSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableBoolSetSpec: XCTestCase {

    func testGIVEN_ATargetWithoutAValueAndANewValue_WHEN_Execute_THEN_SourceValueIsNewValue() {
        // GIVEN
        let target = OOWritableBoolFake()
        let newValue = OOBoolFake()
        let object = DoWritableBoolSet(newValue, to: target)
        // WHEN
        object.execute()
        // THEN
        XCTAssertEqual(newValue.value, target.value)
    }

}
