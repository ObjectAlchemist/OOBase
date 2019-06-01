//
//  FloatIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatIF: OOFloat {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOFloat, ELSE secondary: OOFloat) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOFloat
    private let secondary: OOFloat
    
}

// convenience initializer
public extension FloatIF {
    
    convenience init(_ bool: Bool, THEN primary: Float, ELSE secondary: Float = 0) {
        self.init(BoolConst(bool), THEN: FloatConst(primary), ELSE: FloatConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: Float, ELSE secondary: OOFloat) {
        self.init(BoolConst(bool), THEN: FloatConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOFloat, ELSE secondary: Float = 0) {
        self.init(BoolConst(bool), THEN: primary, ELSE: FloatConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: Float, ELSE secondary: Float = 0) {
        self.init(bool, THEN: FloatConst(primary), ELSE: FloatConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOFloat, ELSE secondary: OOFloat) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: Float, ELSE secondary: OOFloat) {
        self.init(bool, THEN: FloatConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOFloat, ELSE secondary: Float = 0) {
        self.init(bool, THEN: primary, ELSE: FloatConst(secondary))
    }

}
