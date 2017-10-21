//
//  IsEmptyString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class IsEmptyString: OOBool {
    
    // MARK: - init

    public init(_ string: OOString) {
        self.string = string
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return string.value.isEmpty
    }
    
    // MARK: - private
    
    private let string: OOString
    
}

// convenience initializer
public extension IsEmptyString {
    
    public convenience init(_ string: String) {
        self.init(StringConst(string))
    }
    
}
