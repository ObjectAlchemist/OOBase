//
//  OOWritableKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: WritableKeyValue
public protocol OOWritableKeyValue: OOKeyValue {

    func hasValue(for key: String) -> Bool
    func value(for key: String) -> Any
    func set(value: Any, for key: String)
    func remove(key: String)
    
}

public final class OOWritableKeyValueFake: OOWritableKeyValue {

    // MARK: - init
    
    public init(_ initial: [String: Any] = [:]) {
        self.storage = initial
    }
    
    // MARK: - protocol: OOWritableKeyValue
    
    public func hasValue(for key: String) -> Bool {
        return storage[key] != nil
    }
    
    public func value(for key: String) -> Any {
        return storage[key]!
    }
    
    public func set(value: Any, for key: String) {
        storage[key] = value
    }
    
    public func remove(key: String) {
        storage[key] = nil
    }
    
    // MARK: - private
    
    private var storage: [String: Any]
    
}

open /*abstract*/ class OOWritableKeyValueWrap: OOWritableKeyValue {
    
    // MARK: - init
    
    public init(origin: OOWritableKeyValue) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableKeyValue
    
    public func hasValue(for key: String) -> Bool {
        return origin.hasValue(for: key)
    }
    
    public func value(for key: String) -> Any {
        return origin.value(for: key)
    }
    
    public func set(value: Any, for key: String) {
        origin.set(value: value, for: key)
    }
    
    public func remove(key: String) {
        origin.remove(key: key)
    }
    
    // MARK: - private
    
    private let origin: OOWritableKeyValue
    
}

public extension OOWritableKeyValue {
    
    subscript(key: String) -> Any {
        get { return value(for: key) }
        set(value) { set(value: value, for: key) }
    }

}
