//
//  DoIF.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoIF: OOExecutable {
    
    // MARK: - init

    public init(_ bool: OOBool, THEN primary: OOExecutable, ELSE secondary: OOExecutable = DoNothing()) {
        self.bool = bool
        self.primary = primary
        self.secondary = secondary
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        (bool.value ? primary : secondary).execute()
    }
    
    // MARK: - private
    
    private let bool: OOBool
    private let primary: OOExecutable
    private let secondary: OOExecutable
    
}

// convenience initializer
public extension DoIF {
    
    public convenience init(_ bool: Bool, THEN primary: OOExecutable, ELSE secondary: OOExecutable = DoNothing()) {
        self.init(BoolConst(bool), THEN: primary, ELSE: secondary)
    }
    
}
