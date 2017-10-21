//
//  DoWritableKeyValueRemove.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableKeyValueRemove: OOExecutable {
    
    // MARK: - init
    
    public init(_ target: OOWritableKeyValue, at key: OOString) {
        self.target = target
        self.key = key
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.remove(key: key.value)
    }
    
    // MARK: - private
    
    private let target: OOWritableKeyValue
    private let key: OOString
    
}

// convenience initializer
public extension DoWritableKeyValueRemove {
    
    public convenience init(_ target: OOWritableKeyValue, at key: String) {
        self.init(target, at: StringConst(key))
    }
    
}
