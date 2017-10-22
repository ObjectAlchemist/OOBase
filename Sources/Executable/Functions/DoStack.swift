//
//  DoStack.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoStack: OOExecutable {
    
    // MARK: - init
    
    public init(_ stack: [OOExecutable]) {
        self.stack = stack
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        stack.forEach { $0.execute() }
    }
    
    // MARK: - private
    
    private let stack: [OOExecutable]
    
}

// convenience initializer
public extension DoStack {
    
    public convenience init(_ first: OOExecutable, _ second: OOExecutable) {
        self.init([first, second])
    }
    
}

public func +(left: OOExecutable, right: OOExecutable) -> OOExecutable {
    return DoStack(left, right)
}

public func &&(left: OOExecutable, right: OOExecutable) -> OOExecutable {
    return DoStack(left, right)
}
