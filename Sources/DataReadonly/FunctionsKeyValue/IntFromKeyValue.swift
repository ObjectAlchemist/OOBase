//
//  IntFromKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntFromKeyValue: OOInt {
    
    // MARK: - init
    
    public init(storedIn store: OOKeyValue, at key: OOString) {
        self.store = store
        self.key = key
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return store[key.value] as! Int
    }
    
    // MARK: - private
    
    private let store: OOKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension IntFromKeyValue {
    
    public convenience init(storedIn store: OOKeyValue, at key: String) {
        self.init(storedIn: store, at: StringConst(key))
    }
    
}
