//
//  StringFromKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringFromKeyValue: OOString {
    
    // MARK: - init
    
    public init(storedIn store: OOKeyValue, at key: OOString) {
        self.store = store
        self.key = key
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return store[key.value] as! String
    }
    
    // MARK: - private
    
    private let store: OOKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension StringFromKeyValue {
    
    public convenience init(storedIn store: OOKeyValue, at key: String) {
        self.init(storedIn: store, at: StringConst(key))
    }
    
}
