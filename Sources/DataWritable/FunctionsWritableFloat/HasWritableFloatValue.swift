//
//  HasWritableFloatValue.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class HasWritableFloatValue: OOBool {
    
    // MARK: - init
    
    public init(_ source: OOWritableFloat) {
        self.source = source
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        return source.hasValue
    }
    
    // MARK: - private
    
    private let source: OOWritableFloat
}
