//
//  FloatFromIntSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class FloatFromIntSpec: XCTestCase {

    func testGIVEN_1AsSource_WHEN_GetValue_THEN_AFloatNear1IsReturned() {
        // GIVEN
        let object = FloatFromInt(OOIntFake(1))
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, 1) // comparison diff is less than 1e-15
    }
    
}
