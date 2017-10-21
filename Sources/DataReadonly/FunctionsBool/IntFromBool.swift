//
//  IntFromBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntFromBool: OOInt {
    
    // MARK: - init
    
    public init(_ bool: OOBool) {
        self.bool = bool
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return bool.value ? 1 : 0
    }
    
    // MARK: - private
    
    private let bool: OOBool
    
}

// convenience initializer
public extension IntFromBool {
    
    public convenience init(_ bool: Bool) {
        self.init(BoolConst(bool))
    }
    
}
