//
//  FloatFromInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatFromInt: OOFloat {
    
    // MARK: - init
    
    public init(_ int: OOInt) {
        self.int = int
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return Float(int.value)
    }
    
    // MARK: - private
    
    private let int: OOInt
    
}

// convenience initializer
public extension FloatFromInt {
    
    convenience init(_ int: Int) {
        self.init(IntConst(int))
    }
    
}
