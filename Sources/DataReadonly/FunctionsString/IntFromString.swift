//
//  IntFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntFromString: OOInt {
    
    // MARK: - init
    
    public init(_ string: OOString) {
        self.string = string
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return Int(string.value)!
    }
    
    // MARK: - private
    
    private let string: OOString
    
}

// convenience initializer
public extension IntFromString {
    
    public convenience init(_ string: String) {
        self.init(StringConst(string))
    }
    
}
