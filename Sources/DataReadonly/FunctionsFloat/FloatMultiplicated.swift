//
//  FloatMultiplicated.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatMultiplicated: OOFloat {
    
    // MARK: - init

    public init(_ first: OOFloat, multipliedBy second: OOFloat) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return first.value * second.value
    }
    
    // MARK: - private
    
    private let first: OOFloat
    private let second: OOFloat
    
}

// convenience initializer
public extension FloatMultiplicated {
    
    convenience init(_ first: Float, multipliedBy second: Float) {
        self.init(FloatConst(first), multipliedBy: FloatConst(second))
    }
    
    convenience init(_ first: Float, multipliedBy second: OOFloat) {
        self.init(FloatConst(first), multipliedBy: second)
    }
    
    convenience init(_ first: OOFloat, multipliedBy second: Float) {
        self.init(first, multipliedBy: FloatConst(second))
    }
    
}

public func *(left: Float, right: OOFloat) -> OOFloat {
    return FloatMultiplicated(left, multipliedBy: right)
}

public func *(left: OOFloat, right: Float) -> OOFloat {
    return FloatMultiplicated(left, multipliedBy: right)
}

public func *(left: OOFloat, right: OOFloat) -> OOFloat {
    return FloatMultiplicated(left, multipliedBy: right)
}
