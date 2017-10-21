//
//  IsEqualStrings.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IsEqualStrings: OOBool {
    
    // MARK: - init

    public init(_ first: OOString, _ second: OOString) {
        self.first = first
        self.second = second
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return first.value == second.value
    }
    
    // MARK: - private
    
    private let first: OOString
    private let second: OOString
    
}

// convenience initializer
public extension IsEqualStrings {
    
    public convenience init(_ first: String, _ second: String) {
        self.init(StringConst(first), StringConst(second))
    }
    
    public convenience init(_ first: String, _ second: OOString) {
        self.init(StringConst(first), second)
    }
    
    public convenience init(_ first: OOString, _ second: String) {
        self.init(first, StringConst(second))
    }
    
}

public func ==(left: String, right: OOString) -> OOBool {
    return IsEqualStrings(left, right)
}

public func ==(left: OOString, right: String) -> OOBool {
    return IsEqualStrings(left, right)
}

public func ==(left: OOString, right: OOString) -> OOBool {
    return IsEqualStrings(left, right)
}
