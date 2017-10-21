//
//  WritableKeyValueMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public typealias KeyValueMemory = WritableKeyValueMemory

public final class WritableKeyValueMemory: OOWritableKeyValue {
    
    // MARK: - init
    
    public init(_ initial: [String: Any] = [:]) {
        store = initial
    }
    
    // MARK: - protocol: OOWritableKeyValue
    
    public func hasValue(for key: String) -> Bool {
        return store.contains { return $0.key == key }
    }
    
    public func value(for key: String) -> Any {
        return store[key]!
    }
    
    public func set(value: Any, for key: String) {
        store[key] = value
    }
    
    public func remove(key: String) {
        store.removeValue(forKey: key)
    }
    
    // MARK: - private
    
    private var store: [String: Any]
    
}
