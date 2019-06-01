//
//  StringFromFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringFromFloat: OOString {
    
    // MARK: - init

    public init(_ float: OOFloat) {
        self.float = float
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        return "\(float.value)"
    }
    
    // MARK: - private
    
    private let float: OOFloat
    
}

// convenience initializer
public extension StringFromFloat {
    
    convenience init(_ float: Float) {
        self.init(FloatConst(float))
    }
    
}
