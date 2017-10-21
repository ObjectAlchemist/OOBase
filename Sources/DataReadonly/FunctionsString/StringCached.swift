//
//  StringCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringCached: OOString {
    
    // MARK: - init
    
    public init(cache decorated: OOString, in store: OOWritableString = StringMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        let result: String
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOString
    private let store: OOWritableString
    
}

// convenience initializer
public extension StringCached {
    
    public convenience init(cache decorated: OOString, in store: OOWritableKeyValue, at key: String) {
        self.init(cache: decorated, in: store, at: StringConst(key))
    }
    
    public convenience init(cache decorated: OOString, in store: OOWritableKeyValue, at key: OOString) {
        self.init(cache: decorated, in: WritableStringFromWritableKeyValue(store, at: key))
    }
    
}
