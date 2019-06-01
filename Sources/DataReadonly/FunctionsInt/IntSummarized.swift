//
//  IntSummarized.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntSummarized: OOInt {
    
    // MARK: - init

    public init(_ first: OOInt, plus second: OOInt) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return first.value + second.value
    }
    
    // MARK: - private
    
    private let first: OOInt
    private let second: OOInt
    
}

// convenience initializer
public extension IntSummarized {
    
    convenience init(_ first: Int, plus second: Int) {
        self.init(IntConst(first), plus: IntConst(second))
    }
    
    convenience init(_ first: Int, plus second: OOInt) {
        self.init(IntConst(first), plus: second)
    }
    
    convenience init(_ first: OOInt, plus second: Int) {
        self.init(first, plus: IntConst(second))
    }
    
}

public func +(left: Int, right: OOInt) -> OOInt {
    return IntSummarized(left, plus: right)
}

public func +(left: OOInt, right: Int) -> OOInt {
    return IntSummarized(left, plus: right)
}

public func +(left: OOInt, right: OOInt) -> OOInt {
    return IntSummarized(left, plus: right)
}
