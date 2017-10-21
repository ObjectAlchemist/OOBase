//
//  IntDivided.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntDivided: OOInt {
    
    // MARK: - init

    public init(_ first: OOInt, dividedBy second: OOInt) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return first.value / second.value
    }
    
    // MARK: - private
    
    private let first: OOInt
    private let second: OOInt
    
}

// convenience initializer
public extension IntDivided {
    
    public convenience init(_ first: Int, dividedBy second: Int) {
        self.init(IntConst(first), dividedBy: IntConst(second))
    }
    
    public convenience init(_ first: Int, dividedBy second: OOInt) {
        self.init(IntConst(first), dividedBy: second)
    }
    
    public convenience init(_ first: OOInt, dividedBy second: Int) {
        self.init(first, dividedBy: IntConst(second))
    }
    
}

public func /(left: Int, right: OOInt) -> OOInt {
    return IntDivided(left, dividedBy: right)
}

public func /(left: OOInt, right: Int) -> OOInt {
    return IntDivided(left, dividedBy: right)
}

public func /(left: OOInt, right: OOInt) -> OOInt {
    return IntDivided(left, dividedBy: right)
}
