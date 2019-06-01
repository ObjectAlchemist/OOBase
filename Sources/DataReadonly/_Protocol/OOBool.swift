//
//  OOBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: Bool, Is, Has
public protocol OOBool: OOAny {

    var value: Bool { get }
    
}

public final class OOBoolFake: OOBool {

    // MARK: - init
    
    public init(_ value: Bool = false) {
        self.value = value
    }
    
    // MARK: - protocol: OOBool
    
    public let value: Bool
    
    // MARK: - private
    
}

open /*abstract*/ class OOBoolWrap: OOBool {
    
    // MARK: - init
    
    public init(origin: OOBool) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOBool
    
    public final var value: Bool {
        return origin.value
    }
    
    // MARK: - private
    
    private let origin: OOBool
    
}

// OOAny compatibility
public extension OOBool {
    
    var value: Any {
        return value as Bool
    }
    
}
