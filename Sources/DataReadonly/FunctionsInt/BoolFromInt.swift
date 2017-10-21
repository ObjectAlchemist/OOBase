//
//  BoolFromInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolFromInt: OOBool {
    
    // MARK: - init

    public init(_ int: OOInt) {
        self.int = int
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return int.value == 0 ? false : true
    }
    
    // MARK: - private
    
    private let int: OOInt
    
}

// convenience initializer
public extension BoolFromInt {
    
    public convenience init(_ int: Int) {
        self.init(IntConst(int))
    }
    
}
