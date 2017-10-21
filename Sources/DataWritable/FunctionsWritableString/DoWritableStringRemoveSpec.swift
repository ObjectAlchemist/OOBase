//
//  DoWritableStringRemoveSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableStringRemoveSpec: XCTestCase {

    func testGIVEN_ASourceWithAValue_WHEN_Execute_THEN_SourceDoNotHaveAValue() {
        // GIVEN
        let source = OOWritableStringFake("1")
        let object = DoWritableStringRemove(source)
        // WHEN
        object.execute()
        // THEN
        XCTAssertFalse(source.hasValue)
    }

}
