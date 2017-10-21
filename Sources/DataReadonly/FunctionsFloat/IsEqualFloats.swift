//
//  IsEqualFloats.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IsEqualFloats: OOBool {
    
    // MARK: - init

    public init(_ first: OOFloat, _ second: OOFloat) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return first.value == second.value
    }
    
    // MARK: - private
    
    private let first: OOFloat
    private let second: OOFloat
    
}

// convenience initializer
public extension IsEqualFloats {
    
    public convenience init(_ first: Float, _ second: Float) {
        self.init(FloatConst(first), FloatConst(second))
    }
    
    public convenience init(_ first: Float, _ second: OOFloat) {
        self.init(FloatConst(first), second)
    }
    
    public convenience init(_ first: OOFloat, _ second: Float) {
        self.init(first, FloatConst(second))
    }
    
}

public func ==(left: Float, right: OOFloat) -> OOBool {
    return IsEqualFloats(left, right)
}

public func ==(left: OOFloat, right: Float) -> OOBool {
    return IsEqualFloats(left, right)
}

public func ==(left: OOFloat, right: OOFloat) -> OOBool {
    return IsEqualFloats(left, right)
}
