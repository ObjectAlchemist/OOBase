//
//  DoWritableStringSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableStringSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOString, to target: OOWritableString) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOString
    private let target: OOWritableString
    
}

// convenience initializer
public extension DoWritableStringSet {
    
    convenience init(_ source: String, to target: OOWritableString) {
        self.init(StringConst(source), to: target)
    }
    
}

