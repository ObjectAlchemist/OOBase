//
//  WritableKeyValuePrefixedKeys.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

/**
 Adds a prefix to all keys for easier filtering later.
 */
public final class WritableKeyValuePrefixedKeys: OOWritableKeyValue {
    
    // MARK: - init

    public init(_ decorated: OOWritableKeyValue, prefix: OOString) {
        self.decorated = decorated
        self.prefix = prefix
    }
    
    // MARK: - protocol: OOWritableKeyValue
    
    public func hasValue(for key: String) -> Bool {
        return decorated.hasValue(for: prefix.value + key)
    }
    
    public func value(for key: String) -> Any {
        return decorated.value(for: prefix.value + key)
    }
    
    public func set(value: Any, for key: String) {
        decorated.set(value: value, for: prefix.value + key)
    }
    
    public func remove(key: String) {
        decorated.remove(key: prefix.value + key)
    }

    // MARK: - private
    
    private let decorated: OOWritableKeyValue
    private let prefix: OOString
    
}

// convenience initializer
public extension WritableKeyValuePrefixedKeys {
    
    public convenience init(_ decorated: OOWritableKeyValue, prefix: String) {
        self.init(decorated, prefix: StringConst(prefix))
    }
    
}
