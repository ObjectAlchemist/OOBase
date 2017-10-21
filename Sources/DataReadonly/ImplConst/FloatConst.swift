//
//  FloatConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class FloatConst: OOFloatWrap {
    
    public init(_ value: Float) {
        super.init(origin: FloatMemory(value))
    }
    
}
