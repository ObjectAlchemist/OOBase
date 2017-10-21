//
//  BoolConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class BoolConst: OOBoolWrap {
    
    public init(_ value: Bool) {
        super.init(origin: BoolMemory(value))
    }
    
}
