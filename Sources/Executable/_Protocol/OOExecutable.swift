//
//  OOExecutable.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: Do
public protocol OOExecutable: class {

    func execute()
    
}

public final class OOExecutableFake: OOExecutable {

    // MARK: - init
    
    public init(_ action: @escaping () -> () = {}) {
        self.action = action
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        action()
    }
    
    // MARK: - private
    
    private let action: () -> ()
    
}

open /*abstract*/ class OOExecutableWrap: OOExecutable {
    
    // MARK: - init
    
    public init(origin: OOExecutable) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOExecutable
    
    public final func execute() {
        origin.execute()
    }
    
    // MARK: - private
    
    private let origin: OOExecutable
    
}
