//
//  InformSplittingSpec.swift
//  OOBase
//
//  Created by Karsten Litsche on 22.10.17.
//  
//

import XCTest
@testable import OOBase

final class InformSplittingSpec: XCTestCase {

    func testGIVEN_TwoListener_WHEN_Set_THEN_BothListenerGetSameClosureSet() {
        // GIVEN
        var firstSet = false
        var secondSet = false
        let object = InformSplitting([
            OOEventInformFake(onSetAction: { firstSet = true }),
            OOEventInformFake(onSetAction: { secondSet = true })
        ])
        // WHEN
        object.set {}
        // THEN
        XCTAssertTrue(firstSet && secondSet)
    }

}
