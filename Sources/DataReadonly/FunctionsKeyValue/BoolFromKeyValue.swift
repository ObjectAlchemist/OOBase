//
//  BoolFromKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolFromKeyValue: OOBool {
    
    // MARK: - init
    
    public init(storedIn store: OOKeyValue, at key: OOString) {
        self.store = store
        self.key = key
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return store[key.value] as! Bool
    }
    
    // MARK: - private
    
    private let store: OOKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension BoolFromKeyValue {
    
    convenience init(storedIn store: OOKeyValue, at key: String) {
        self.init(storedIn: store, at: StringConst(key))
    }
    
}
