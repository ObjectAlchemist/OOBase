//
//  DoIFSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoIFSpec: XCTestCase {

    func testGIVEN_ATrueCondition_WHEN_Execute_THEN_PrimaryExecutableTriggered() {
        // GIVEN
        var called = false
        let object = DoIF(OOBoolFake(true), THEN: OOExecutableFake({ called = true }), ELSE: OOExecutableFake())
        // WHEN
        object.execute()
        // THEN
        XCTAssertTrue(called)
    }

    func testGIVEN_AFalseCondition_WHEN_Execute_THEN_SecondaryExecutableTriggered() {
        // GIVEN
        var called = false
        let object = DoIF(OOBoolFake(false), THEN: OOExecutableFake(), ELSE: OOExecutableFake({ called = true }))
        // WHEN
        object.execute()
        // THEN
        XCTAssertTrue(called)
    }
    
}
