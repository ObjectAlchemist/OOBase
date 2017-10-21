//
//  StringFromInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringFromInt: OOString {
    
    // MARK: - init
    
    public init(_ int: OOInt) {
        self.int = int
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return "\(int.value)"
    }
    
    // MARK: - private
    
    private let int: OOInt
    
}

// convenience initializer
public extension StringFromInt {
    
    public convenience init(_ int: Int) {
        self.init(IntConst(int))
    }
    
}
