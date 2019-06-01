//
//  FloatCached.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatCached: OOFloat {
    
    // MARK: - init
    
    public init(cache decorated: OOFloat, in store: OOWritableFloat = FloatMemory()) {
        self.decorated = decorated
        self.store = store
    }
    
    // MARK: - protocol: StoredFloat
    
    public var value: Float {
        let result: Float
        if store.hasValue {
            result = store.value
        } else {
            result = decorated.value
            store.value = result
        }
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOFloat
    private let store: OOWritableFloat
    
}

// convenience initializer
public extension FloatCached {
    
    convenience init(cache decorated: OOFloat, in store: OOWritableKeyValue, at key: String) {
        self.init(cache: decorated, in: store, at: StringConst(key))
    }
    
    convenience init(cache decorated: OOFloat, in store: OOWritableKeyValue, at key: OOString) {
        self.init(cache: decorated, in: WritableFloatFromWritableKeyValue(store, at: key))
    }
    
}
