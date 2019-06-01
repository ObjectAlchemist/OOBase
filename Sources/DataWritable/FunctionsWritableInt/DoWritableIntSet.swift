//
//  DoWritableIntSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableIntSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOInt, to target: OOWritableInt) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOInt
    private let target: OOWritableInt
    
}

// convenience initializer
public extension DoWritableIntSet {
    
    convenience init(_ source: Int, to target: OOWritableInt) {
        self.init(IntConst(source), to: target)
    }
    
}
