//
//  TRUE.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class TRUE: OOBoolWrap {
    
    public init() {
        super.init(origin: BoolMemory(true))
    }
    
}
