//
//  IntMultiplicated.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntMultiplicated: OOInt {
    
    // MARK: - init

    public init(_ first: OOInt, multipliedBy second: OOInt) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOInt
    
    public var value: Int {
        return first.value * second.value
    }
    
    // MARK: - private
    
    private let first: OOInt
    private let second: OOInt
    
}

// convenience initializer
public extension IntMultiplicated {
    
    convenience init(_ first: Int, multipliedBy second: Int) {
        self.init(IntConst(first), multipliedBy: IntConst(second))
    }
    
    convenience init(_ first: Int, multipliedBy second: OOInt) {
        self.init(IntConst(first), multipliedBy: second)
    }
    
    convenience init(_ first: OOInt, multipliedBy second: Int) {
        self.init(first, multipliedBy: IntConst(second))
    }
    
}

public func *(left: Int, right: OOInt) -> OOInt {
    return IntMultiplicated(left, multipliedBy: right)
}

public func *(left: OOInt, right: Int) -> OOInt {
    return IntMultiplicated(left, multipliedBy: right)
}

public func *(left: OOInt, right: OOInt) -> OOInt {
    return IntMultiplicated(left, multipliedBy: right)
}
