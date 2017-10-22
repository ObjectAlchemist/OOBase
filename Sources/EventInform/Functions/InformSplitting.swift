//
//  InformSplitting.swift
//  OOBase
//
//  Created by Karsten Litsche on 22.10.17.
//  
//

/**
 Split the listener set to two or more EventInform, so each of them will inform a change.
 */
public final class InformSplitting: OOEventInform {
    
    // MARK: - init
    
    public init(_ stack: [OOEventInform]) {
        self.stack = stack
    }
    
    // MARK: - protocol: OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {
        stack.forEach { $0.set(onEvent: onEvent) }
    }

    // MARK: - private
    
    private let stack: [OOEventInform]
    
}

/** Convenience initializer. */
public extension InformSplitting {
    
    public convenience init(_ first: OOEventInform, _ second: OOEventInform) {
        self.init([first, second])
    }
    
}

public func +(left: OOEventInform, right: OOEventInform) -> OOEventInform {
    return InformSplitting(left, right)
}

public func &&(left: OOEventInform, right: OOEventInform) -> OOEventInform {
    return InformSplitting(left, right)
}
