//
//  HasWritableKeyValueValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class HasWritableKeyValueValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableKeyValue, at key: OOString) {
        self.source = source
        self.key = key
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue(for: key.value)
    }
    
    // MARK: - private
    
    private let source: OOWritableKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension HasWritableKeyValueValue {
    
    convenience init(_ source: OOWritableKeyValue, at key: String) {
        self.init(source, at: StringConst(key))
    }
    
}
