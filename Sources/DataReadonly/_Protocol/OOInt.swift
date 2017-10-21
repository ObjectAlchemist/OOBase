//
//  OOInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: Int
public protocol OOInt: OOAny {

    var value: Int { get }
    
}

public final class OOIntFake: OOInt {

    // MARK: - init
    
    public init(_ value: Int = 0) {
        self.value = value
    }
    
    // MARK: - protocol: OOInt
    
    public let value: Int
    
    // MARK: - private
    
}

open /*abstract*/ class OOIntWrap: OOInt {
    
    // MARK: - init
    
    public init(origin: OOInt) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOInt
    
    public final var value: Int {
        return origin.value
    }
    
    // MARK: - private
    
    private let origin: OOInt
    
}

// OOAny compatibility
public extension OOInt {
    
    public var value: Any {
        return value as Int
    }
    
}
