//
//  DoWritableIntSetSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableIntSetSpec: XCTestCase {

    func testGIVEN_ATargetWithoutAValueAndANewValue_WHEN_Execute_THEN_SourceValueIsNewValue() {
        // GIVEN
        let target = OOWritableIntFake()
        let newValue = OOIntFake()
        let object = DoWritableIntSet(newValue, to: target)
        // WHEN
        object.execute()
        // THEN
        XCTAssertEqual(newValue.value, target.value)
    }

}
