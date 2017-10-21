//
//  IntSubtracted.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntSubtracted: OOInt {
    
    // MARK: - init

    public init(_ first: OOInt, minus second: OOInt) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return first.value - second.value
    }
    
    // MARK: - private
    
    private let first: OOInt
    private let second: OOInt
    
}

// convenience initializer
public extension IntSubtracted {
    
    public convenience init(_ first: Int, minus second: Int) {
        self.init(IntConst(first), minus: IntConst(second))
    }
    
    public convenience init(_ first: Int, minus second: OOInt) {
        self.init(IntConst(first), minus: second)
    }
    
    public convenience init(_ first: OOInt, minus second: Int) {
        self.init(first, minus: IntConst(second))
    }
    
}

public func -(left: Int, right: OOInt) -> OOInt {
    return IntSubtracted(left, minus: right)
}

public func -(left: OOInt, right: Int) -> OOInt {
    return IntSubtracted(left, minus: right)
}

public func -(left: OOInt, right: OOInt) -> OOInt {
    return IntSubtracted(left, minus: right)
}
