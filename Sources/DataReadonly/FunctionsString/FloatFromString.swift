//
//  FloatFromString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatFromString: OOFloat {
    
    // MARK: - init

    public init(_ string: OOString) {
        self.string = string
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return Float(string.value)!
    }
    
    // MARK: - private
    
    private let string: OOString
    
}

// convenience initializer
public extension FloatFromString {
    
    public convenience init(_ string: String) {
        self.init(StringConst(string))
    }
    
}
