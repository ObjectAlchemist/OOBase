//
//  OOFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: Float
public protocol OOFloat: OOAny {

    var value: Float { get }
    
}

public final class OOFloatFake: OOFloat {

    // MARK: - init
    
    public init(_ value: Float = 0) {
        self.value = value
    }
    
    // MARK: - protocol: OOFloat
    
    public let value: Float
    
    // MARK: - private
    
}

open /*abstract*/ class OOFloatWrap: OOFloat {
    
    // MARK: - init
    
    public init(origin: OOFloat) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOFloat
    
    public final var value: Float {
        return origin.value
    }
    
    // MARK: - private
    
    private let origin: OOFloat
    
}

// OOAny compatibility
public extension OOFloat {
    
    var value: Any {
        return value as Float
    }
    
}
