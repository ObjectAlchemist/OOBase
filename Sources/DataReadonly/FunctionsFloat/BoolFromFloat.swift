//
//  BoolFromFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolFromFloat: OOBool {
    
    // MARK: - init

    public init(_ float: OOFloat, accuracy: OOFloat) {
        self.float = float
        self.accuracy = accuracy
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        let result = float.value
        let accuracyValue = accuracy.value
        return result > -accuracyValue && result < accuracyValue ? false : true
    }
    
    // MARK: - private
    
    private let float: OOFloat
    private let accuracy: OOFloat
    
}

// convenience initializer
public extension BoolFromFloat {
    
    public convenience init(_ float: Float, accuracy: Float = 0.001) {
        self.init(FloatConst(float), accuracy: FloatConst(accuracy))
    }
    
    public convenience init(_ float: Float, accuracy: OOFloat) {
        self.init(FloatConst(float), accuracy: accuracy)
    }
    
    public convenience init(_ float: OOFloat, accuracy: Float = 0.001) {
        self.init(float, accuracy: FloatConst(accuracy))
    }
    
}
