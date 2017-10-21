//
//  Not.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class Not: OOBool {
    
    // MARK: - init

    public init(_ decorated: OOBool) {
        self.decorated = decorated
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return !decorated.value
    }
    
    // MARK: - private
    
    private let decorated: OOBool
    
}

// convenience initializer
public extension Not {
    
    public convenience init(_ decorated: Bool) {
        self.init(BoolConst(decorated))
    }
    
}

public prefix func !(value: OOBool) -> OOBool {
    return Not(value)
}
