//
//  DoStackSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoStackSpec: XCTestCase {

    func testGIVEN_TwoExecutables_WHEN_Execute_THEN_BothAreExecuted() {
        // GIVEN
        var called1 = false
        var called2 = false
        let object = DoStack([OOExecutableFake({ called1 = true }), OOExecutableFake({ called2 = true })])
        // WHEN
        object.execute()
        // THEN
        XCTAssertTrue(called1 && called2)
    }

}
