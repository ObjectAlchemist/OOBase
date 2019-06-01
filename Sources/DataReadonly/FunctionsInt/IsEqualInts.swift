//
//  IsEqualInts.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IsEqualInts: OOBool {
    
    // MARK: - init

    public init(_ first: OOInt, _ second: OOInt) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return first.value == second.value
    }
    
    // MARK: - private
    
    private let first: OOInt
    private let second: OOInt
    
}

// convenience initializer
public extension IsEqualInts {
    
    convenience init(_ first: Int, _ second: Int) {
        self.init(IntConst(first), IntConst(second))
    }
    
    convenience init(_ first: Int, _ second: OOInt) {
        self.init(IntConst(first), second)
    }
    
    convenience init(_ first: OOInt, _ second: Int) {
        self.init(first, IntConst(second))
    }
    
}

public func ==(left: Int, right: OOInt) -> OOBool {
    return IsEqualInts(left, right)
}

public func ==(left: OOInt, right: Int) -> OOBool {
    return IsEqualInts(left, right)
}

public func ==(left: OOInt, right: OOInt) -> OOBool {
    return IsEqualInts(left, right)
}
