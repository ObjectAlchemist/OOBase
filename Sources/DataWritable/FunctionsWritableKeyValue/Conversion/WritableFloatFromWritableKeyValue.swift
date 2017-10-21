//
//  WritableFloatFromWritableKeyValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class WritableFloatFromWritableKeyValue: OOWritableFloat {
    
    // MARK: - init
    
    public init(_ source: OOWritableKeyValue, at key: OOString) {
        self.source = source
        self.key = key
    }
    
    // MARK: - protocol: OOWritableFloat
    
    public var hasValue: Bool {
        return source.hasValue(for: key.value)
    }
    
    public var value: Float {
        get { return source[key.value] as! Float }
        set(value) { source[key.value] = value }
    }
    
    public func remove() {
        source.remove(key: key.value)
    }
    
    // MARK: - private
    
    private let source: OOWritableKeyValue
    private let key: OOString
    
}
