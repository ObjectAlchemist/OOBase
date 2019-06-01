//
//  IntFromFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntFromFloat: OOInt {
    
    // MARK: - init

    public init(_ float: OOFloat) {
        self.float = float
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return Int(float.value)
    }
    
    // MARK: - private
    
    private let float: OOFloat
    
}

// convenience initializer
public extension IntFromFloat {
    
    convenience init(_ float: Float) {
        self.init(FloatConst(float))
    }
    
}
