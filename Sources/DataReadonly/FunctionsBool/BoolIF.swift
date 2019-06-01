//
//  BoolIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolIF: OOBool {
    
    // MARK: - init
    
    public init(_ bool: OOBool, THEN primary: OOBool, ELSE secondary: OOBool) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOBool
    private let secondary: OOBool
    
}

// convenience initializer
public extension BoolIF {

    convenience init(_ bool: Bool, THEN primary: Bool, ELSE secondary: Bool = false) {
        self.init(BoolConst(bool), THEN: BoolConst(primary), ELSE: BoolConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: Bool, ELSE secondary: OOBool) {
        self.init(BoolConst(bool), THEN: BoolConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOBool, ELSE secondary: Bool = false) {
        self.init(BoolConst(bool), THEN: primary, ELSE: BoolConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: Bool, ELSE secondary: Bool = false) {
        self.init(bool, THEN: BoolConst(primary), ELSE: BoolConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOBool, ELSE secondary: OOBool) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: Bool, ELSE secondary: OOBool) {
        self.init(bool, THEN: BoolConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOBool, ELSE secondary: Bool = false) {
        self.init(bool, THEN: primary, ELSE: BoolConst(secondary))
    }
    
}
