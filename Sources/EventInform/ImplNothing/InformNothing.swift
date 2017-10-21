//
//  InformNothing.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class InformNothing: OOEventInform {
    
    // MARK: init
    
    public init() {}
    
    // MARK: protocol OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {}
    
    // MARK: private
    
}
