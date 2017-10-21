//
//  DoGenericSnippet.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

/**
 An executable for fast testing code snippets - in long term coding it's better to write concrete executables instead of using this.
 */
public final class DoGenericSnippet: OOExecutable {
    
    // MARK: init
    
    public init(_ generic: @escaping () -> ()) {
        self.generic = generic
    }
    
    // MARK: protocol OOExecutable

    public func execute() {
        generic()
    }

    // MARK: private
    
    private let generic: () -> ()
    
}
