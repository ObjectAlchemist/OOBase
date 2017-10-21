//
//  StringSummarizedSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class StringSummarizedSpec: XCTestCase {

    func testGIVEN_TwoStringAndASeparator_WHEN_GetValue_THEN_StringsAreConcatenatedWithTheSeparatorBetween() {
        // GIVEN
        let object = StringSummarized(OOStringFake("First"), OOStringFake("Second"), separatedBy: OOStringFake("###"))
        // WHEN
        let string = object.value
        // THEN
        XCTAssertEqual(string, "First###Second")
    }

    func testGIVEN_AnEmptySecondString_WHEN_GetValue_THEN_FirstStringIsReturned() {
        // GIVEN
        let object = StringSummarized(OOStringFake("First"), OOStringFake(""), separatedBy: OOStringFake("###"))
        // WHEN
        let string = object.value
        // THEN
        XCTAssertEqual(string, "First")
    }

    func testGIVEN_AnEmptyFirstString_WHEN_GetValue_THEN_SecondStringIsReturned() {
        // GIVEN
        let object = StringSummarized(OOStringFake(""), OOStringFake("Second"), separatedBy: OOStringFake("###"))
        // WHEN
        let string = object.value
        // THEN
        XCTAssertEqual(string, "Second")
    }

    func testGIVEN_TwoEmptyStrings_WHEN_GetValue_THEN_EmptyStringIsReturned() {
        // GIVEN
        let object = StringSummarized(OOStringFake(""), OOStringFake(""), separatedBy: OOStringFake("###"))
        // WHEN
        let string = object.value
        // THEN
        XCTAssertEqual(string, "")
    }
    
}
