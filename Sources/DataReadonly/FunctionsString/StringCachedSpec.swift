//
//  StringCachedSpec.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

import XCTest
@testable import OOBase

final class StringCachedSpec: XCTestCase {

    func testGIVEN_ADecoratedObject_WHEN_GetValueWithEmptyCache_THEN_OriginValueIsReturned() {
        // GIVEN
        let origin = OOStringFake("origin")
        let cache = OOWritableStringFake(nil)
        let object = StringCached(cache: origin, in: cache)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, origin.value)
    }
    
    func testGIVEN_ADecoratedObject_WHEN_GetValueWithNonEmptyCache_THEN_ValueFromCacheIsReturned() {
        // GIVEN
        let origin = OOStringFake("origin")
        let cache = OOWritableStringFake("cached")
        let object = StringCached(cache: origin, in: cache)
        // WHEN
        let result = object.value
        // THEN
        XCTAssertEqual(result, cache.value)
    }
    
    func testGIVEN_ADecoratedObject_WHEN_GetValueWithEmptyCache_THEN_ValueIsWrittenToCache() {
        // GIVEN
        let origin = OOStringFake("origin")
        let cache = OOWritableStringFake(nil)
        let object = StringCached(cache: origin, in: cache)
        // WHEN
        let _ = object.value
        // THEN
        XCTAssertEqual(origin.value, cache.value)
    }

}
