//
//  DoWritableFloatRemove.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class DoWritableFloatRemove: OOExecutable {
    
    // MARK: - init
    
    public init(_ target: OOWritableFloat) {
        self.target = target
    }
    
    // MARK: - protocol: OOExecutable
    
    public func execute() {
        target.remove()
    }
    
    // MARK: - private
    
    private let target: OOWritableFloat
    
}
