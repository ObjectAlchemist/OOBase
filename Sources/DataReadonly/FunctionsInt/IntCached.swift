//
//  IntCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntCached: OOInt {
    
    // MARK: - init
    
    public init(cache decorated: OOInt, in store: OOWritableInt = IntMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        let result: Int
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOInt
    private let store: OOWritableInt
    
}

// convenience initializer
public extension IntCached {
    
    convenience init(cache decorated: OOInt, in store: OOWritableKeyValue, at key: String) {
        self.init(cache: decorated, in: store, at: StringConst(key))
    }
    
    convenience init(cache decorated: OOInt, in store: OOWritableKeyValue, at key: OOString) {
        self.init(cache: decorated, in: WritableIntFromWritableKeyValue(store, at: key))
    }
    
}
