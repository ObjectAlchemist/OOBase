//
//  OOString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: String
public protocol OOString: OOAny {

    var value: String { get }
    
}

public final class OOStringFake: OOString {

    // MARK: - init
    
    public init(_ value: String = "FAKE") {
        self.value = value
    }
    
    // MARK: - protocol: OOString
    
    public let value: String
    
    // MARK: - private
    
}

open /*abstract*/ class OOStringWrap: OOString {
    
    // MARK: - init
    
    public init(origin: OOString) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOSString
    
    public final var value: String {
        return origin.value
    }
    
    // MARK: - private
    
    private let origin: OOString
    
}

// OOAny compatibility
public extension OOString {
    
    public var value: Any {
        return value as String
    }
    
}
