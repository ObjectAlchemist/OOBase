//
//  DoWritableBoolSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableBoolSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOBool, to target: OOWritableBool) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOBool
    private let target: OOWritableBool
    
}

// convenience initializer
public extension DoWritableBoolSet {
    
    public convenience init(_ source: Bool, to target: OOWritableBool) {
        self.init(BoolConst(source), to: target)
    }
    
}
