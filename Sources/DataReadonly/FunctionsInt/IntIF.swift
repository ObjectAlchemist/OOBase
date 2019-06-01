//
//  IntIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntIF: OOInt {
    
    // MARK: - init

    public init(_ bool: OOBool, THEN primary: OOInt, ELSE secondary: OOInt) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOInt
    private let secondary: OOInt
    
}

// convenience initializer
public extension IntIF {
    
    convenience init(_ bool: Bool, THEN primary: Int, ELSE secondary: Int = 0) {
        self.init(BoolConst(bool), THEN: IntConst(primary), ELSE: IntConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: Int, ELSE secondary: OOInt) {
        self.init(BoolConst(bool), THEN: IntConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOInt, ELSE secondary: Int = 0) {
        self.init(BoolConst(bool), THEN: primary, ELSE: IntConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: Int, ELSE secondary: Int = 0) {
        self.init(bool, THEN: IntConst(primary), ELSE: IntConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOInt, ELSE secondary: OOInt) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: Int, ELSE secondary: OOInt) {
        self.init(bool, THEN: IntConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOInt, ELSE secondary: Int = 0) {
        self.init(bool, THEN: primary, ELSE: IntConst(secondary))
    }    
    
}
