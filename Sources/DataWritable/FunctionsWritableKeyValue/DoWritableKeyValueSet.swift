//
//  DoWritableKeyValueSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableKeyValueSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOAny, in target: OOWritableKeyValue, at key: OOString) {
        self.source = source
        self.target = target
        self.key = key
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.set(value: source.value, for: key.value)
    }
    
    // MARK: - private
    
    private let source: OOAny
    private let target: OOWritableKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension DoWritableKeyValueSet {
    
    public convenience init(_ source: OOAny, in target: OOWritableKeyValue, at key: String) {
        self.init(source, in: target, at: StringConst(key))
    }
    
}
