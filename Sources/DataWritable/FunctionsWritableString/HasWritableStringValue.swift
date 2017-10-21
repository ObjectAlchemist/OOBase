//
//  HasWritableStringValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class HasWritableStringValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableString) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableString
    
}
