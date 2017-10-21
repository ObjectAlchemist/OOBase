//
//  OOEventInform.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public protocol OOEventInform: class {

    // Attention: Using may cause a memory leak! Better use a weak instance inside!
    func set(onEvent: @escaping () -> ())
    
}

public final class OOEventInformFake: OOEventInform {

    // MARK: - init
    
    // MARK: - protocol: OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {}
    
    // MARK: - private
    
}

