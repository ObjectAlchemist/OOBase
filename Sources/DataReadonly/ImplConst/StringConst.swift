//
//  StringConst.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringConst: OOStringWrap {
    
    public init(_ value: String = "") {
        super.init(origin: StringMemory(value))
    }

}
