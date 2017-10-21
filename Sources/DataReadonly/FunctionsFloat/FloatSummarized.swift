//
//  FloatSummarized.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatSummarized: OOFloat {
    
    // MARK: - init

    public init(_ first: OOFloat, plus second: OOFloat) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOFloat
    
    public var value: Float {
        return first.value + second.value
    }
    
    // MARK: - private
    
    private let first: OOFloat
    private let second: OOFloat
    
}

// convenience initializer
public extension FloatSummarized {
    
    public convenience init(_ first: Float, plus second: Float) {
        self.init(FloatConst(first), plus: FloatConst(second))
    }
    
    public convenience init(_ first: Float, plus second: OOFloat) {
        self.init(FloatConst(first), plus: second)
    }
    
    public convenience init(_ first: OOFloat, plus second: Float) {
        self.init(first, plus: FloatConst(second))
    }
    
}

public func +(left: Float, right: OOFloat) -> OOFloat {
    return FloatSummarized(left, plus: right)
}

public func +(left: OOFloat, right: Float) -> OOFloat {
    return FloatSummarized(left, plus: right)
}

public func +(left: OOFloat, right: OOFloat) -> OOFloat {
    return FloatSummarized(left, plus: right)
}
