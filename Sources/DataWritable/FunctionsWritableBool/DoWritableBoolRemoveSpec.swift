//
//  DoWritableBoolRemoveSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableBoolRemoveSpec: XCTestCase {

    func testGIVEN_ASourceWithAValue_WHEN_Execute_THEN_SourceDoNotHaveAValue() {
        // GIVEN
        let source = OOWritableBoolFake(true)
        let object = DoWritableBoolRemove(source)
        // WHEN
        object.execute()
        // THEN
        XCTAssertFalse(source.hasValue)
    }

}
