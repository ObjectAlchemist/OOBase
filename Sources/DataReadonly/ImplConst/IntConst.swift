//
//  IntConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IntConst: OOIntWrap {
    
    public init(_ value: Int) {
        super.init(origin: IntMemory(value))
    }
    
}
