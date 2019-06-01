//
//  IsEqualBools.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IsEqualBools: OOBool {
    
    // MARK: - init
    
    public init(_ first: OOBool, _ second: OOBool) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return first.value == second.value
    }
    
    // MARK: - private
    
    private let first: OOBool
    private let second: OOBool
    
}

// convenience initializer
public extension IsEqualBools {
    
    convenience init(_ first: Bool, _ second: Bool) {
        self.init(BoolConst(first), BoolConst(second))
    }
    
    convenience init(_ first: Bool, _ second: OOBool) {
        self.init(BoolConst(first), second)
    }
    
    convenience init(_ first: OOBool, _ second: Bool) {
        self.init(first, BoolConst(second))
    }
    
}

public func ==(left: Bool, right: OOBool) -> OOBool {
    return IsEqualBools(left, right)
}

public func ==(left: OOBool, right: Bool) -> OOBool {
    return IsEqualBools(left, right)
}

public func ==(left: OOBool, right: OOBool) -> OOBool {
    return IsEqualBools(left, right)
}
