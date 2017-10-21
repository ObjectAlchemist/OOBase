//
//  BoolFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolFromString: OOBool {
    
    // MARK: - init
    
    public init(_ string: OOString) {
        self.string = string
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return Bool(string.value)!
    }
    
    // MARK: - private
    
    private let string: OOString
    
}

// convenience initializer
public extension BoolFromString {
    
    public convenience init(_ string: String) {
        self.init(StringConst(string))
    }
    
}
