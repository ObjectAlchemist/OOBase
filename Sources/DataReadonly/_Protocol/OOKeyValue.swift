//
//  OOKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: KeyValue, Dict
public protocol OOKeyValue: class {

    func value(for key: String) -> Any
    
}

public final class OOKeyValueFake: OOKeyValue {

    // MARK: - init
    
    public init(_ initial: [String: Any] = [:]) {
        self.storage = initial
    }
    
    // MARK: - protocol: OOKeyValue
    
    public func value(for key: String) -> Any {
        return storage[key]!
    }
    
    // MARK: - private
    
    private var storage: [String: Any]
    
}

open /*abstract*/ class OOKeyValueWrap: OOKeyValue {
    
    // MARK: - init
    
    public init(origin: OOKeyValue) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOKeyValue
    
    public final func value(for key: String) -> Any {
        return origin.value(for: key)
    }
    
    // MARK: - private
    
    private let origin: OOKeyValue
    
}

public extension OOKeyValue {
    
    subscript(key: String) -> Any {
        return value(for: key)
    }
    
}
