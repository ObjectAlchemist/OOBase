//
//  StringIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringIF: OOString {
    
    // MARK: - init

    public init(_ bool: OOBool, THEN primary: OOString, ELSE secondary: OOString) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return (bool.value ? primary : secondary).value
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOString
    private let secondary: OOString
    
}

// convenience initializer
public extension StringIF {
    
    convenience init(_ bool: Bool, THEN primary: String, ELSE secondary: String = "") {
        self.init(BoolConst(bool), THEN: StringConst(primary), ELSE: StringConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: String, ELSE secondary: OOString) {
        self.init(BoolConst(bool), THEN: StringConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: Bool, THEN primary: OOString, ELSE secondary: String = "") {
        self.init(BoolConst(bool), THEN: primary, ELSE: StringConst(secondary))
    }
    
    convenience init(_ bool: OOBool, THEN primary: String, ELSE secondary: String = "") {
        self.init(bool, THEN: StringConst(primary), ELSE: StringConst(secondary))
    }
    
    convenience init(_ bool: Bool, THEN primary: OOString, ELSE secondary: OOString) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: String, ELSE secondary: OOString) {
        self.init(bool, THEN: StringConst(primary), ELSE: secondary)
    }
    
    convenience init(_ bool: OOBool, THEN primary: OOString, ELSE secondary: String = "") {
        self.init(bool, THEN: primary, ELSE: StringConst(secondary))
    }
    
}
