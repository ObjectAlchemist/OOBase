//
//  DoWritableKeyValueRemoveSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class DoWritableKeyValueRemoveSpec: XCTestCase {

    func testGIVEN_ASourceWithAValue_WHEN_Execute_THEN_SourceDoNotHaveAValue() {
        // GIVEN
        let source = OOWritableKeyValueFake(["key":"value"])
        let key = OOStringFake("key")
        let object = DoWritableKeyValueRemove(source, at: key)
        // WHEN
        object.execute()
        // THEN
        XCTAssertFalse(source.hasValue(for: key.value))
    }

}
