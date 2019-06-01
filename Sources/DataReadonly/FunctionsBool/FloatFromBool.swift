//
//  FloatFromBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatFromBool: OOFloat {
    
    // MARK: - init

    public init(_ bool: OOBool) {
        self.bool = bool
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return bool.value ? 1 : 0
    }
    
    // MARK: - private
    
    private let bool: OOBool
    
}

// convenience initializer
public extension FloatFromBool {
    
    convenience init(_ bool: Bool) {
        self.init(BoolConst(bool))
    }
    
}
