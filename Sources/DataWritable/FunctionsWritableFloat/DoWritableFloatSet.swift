//
//  DoWritableFloatSet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableFloatSet: OOExecutable {
    
    // MARK: - init
    
    public init(_ source: OOFloat, to target: OOWritableFloat) {
        self.source = source
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.value = source.value
    }
    
    // MARK: - private
    
    private let source: OOFloat
    private let target: OOWritableFloat
    
}

// convenience initializer
public extension DoWritableFloatSet {
    
    public convenience init(_ source: Float, to target: OOWritableFloat) {
        self.init(FloatConst(source), to: target)
    }
    
}
