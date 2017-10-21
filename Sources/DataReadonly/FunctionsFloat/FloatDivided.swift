//
//  FloatDivided.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatDivided: OOFloat {
    
    // MARK: - init

    public init(_ first: OOFloat, dividedBy second: OOFloat) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return first.value / second.value
    }
    
    // MARK: - private
    
    private let first: OOFloat
    private let second: OOFloat
    
}

// convenience initializer
public extension FloatDivided {
    
    public convenience init(_ first: Float, dividedBy second: Float) {
        self.init(FloatConst(first), dividedBy: FloatConst(second))
    }
    
    public convenience init(_ first: Float, dividedBy second: OOFloat) {
        self.init(FloatConst(first), dividedBy: second)
    }
    
    public convenience init(_ first: OOFloat, dividedBy second: Float) {
        self.init(first, dividedBy: FloatConst(second))
    }
    
}

public func /(left: Float, right: OOFloat) -> OOFloat {
    return FloatDivided(left, dividedBy: right)
}

public func /(left: OOFloat, right: Float) -> OOFloat {
    return FloatDivided(left, dividedBy: right)
}

public func /(left: OOFloat, right: OOFloat) -> OOFloat {
    return FloatDivided(left, dividedBy: right)
}
