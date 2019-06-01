//
//  StringFromBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringFromBool: OOString {
    
    // MARK: - init

    public init(_ bool: OOBool) {
        self.bool = bool
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return "\(bool.value)"
    }
    
    // MARK: - private
    
    private let bool: OOBool
    
}

// convenience initializer
public extension StringFromBool {
    
    convenience init(_ bool: Bool) {
        self.init(BoolConst(bool))
    }
    
}
