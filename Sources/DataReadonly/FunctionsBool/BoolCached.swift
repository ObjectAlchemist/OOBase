//
//  BoolCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolCached: OOBool {
    
    // MARK: - init

    public init(cache decorated: OOBool, in store: OOWritableBool = BoolMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        let result: Bool
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOBool
    private let store: OOWritableBool
    
}

// convenience initializer
public extension BoolCached {
    
    convenience init(cache decorated: OOBool, in store: OOWritableKeyValue, at key: String) {
        self.init(cache: decorated, in: store, at: StringConst(key))
    }
    
    convenience init(cache decorated: OOBool, in store: OOWritableKeyValue, at key: OOString) {
        self.init(cache: decorated, in: WritableBoolFromWritableKeyValue(store, at: key))
    }
    
}
