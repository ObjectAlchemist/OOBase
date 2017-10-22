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
    
    public init(onSetAction: @escaping () -> () = {}) {
        self.onSetAction = onSetAction
    }
    
    // MARK: - protocol: OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {
        onSetAction()
    }
    
    // MARK: - private
    
    private let onSetAction: () -> ()
    
}

open /*abstract*/ class OOEventInformWrap: OOEventInform {
    
    // MARK: - init
    
    public init(origin: OOEventInform) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {
        origin.set(onEvent: onEvent)
    }
    
    // MARK: - private
    
    private let origin: OOEventInform
    
}
