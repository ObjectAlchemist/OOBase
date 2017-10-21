//
//  FloatFromKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatFromKeyValue: OOFloat {
    
    // MARK: - init
    
    public init(storedIn store: OOKeyValue, at key: OOString) {
        self.store = store
        self.key = key
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return store[key.value] as! Float
    }
    
    // MARK: - private
    
    private let store: OOKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension FloatFromKeyValue {
    
    public convenience init(storedIn store: OOKeyValue, at key: String) {
        self.init(storedIn: store, at: StringConst(key))
    }
    
}
