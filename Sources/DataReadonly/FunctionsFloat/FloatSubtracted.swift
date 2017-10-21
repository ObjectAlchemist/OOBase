//
//  FloatSubtracted.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatSubtracted: OOFloat {
    
    // MARK: - init

    public init(_ first: OOFloat, minus second: OOFloat) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return first.value - second.value
    }
    
    // MARK: - private
    
    private let first: OOFloat
    private let second: OOFloat
    
}

// convenience initializer
public extension FloatSubtracted {
    
    public convenience init(_ first: Float, minus second: Float) {
        self.init(FloatConst(first), minus: FloatConst(second))
    }
    
    public convenience init(_ first: Float, minus second: OOFloat) {
        self.init(FloatConst(first), minus: second)
    }
    
    public convenience init(_ first: OOFloat, minus second: Float) {
        self.init(first, minus: FloatConst(second))
    }
    
}

public func -(left: Float, right: OOFloat) -> OOFloat {
    return FloatSubtracted(left, minus: right)
}

public func -(left: OOFloat, right: Float) -> OOFloat {
    return FloatSubtracted(left, minus: right)
}

public func -(left: OOFloat, right: OOFloat) -> OOFloat {
    return FloatSubtracted(left, minus: right)
}
