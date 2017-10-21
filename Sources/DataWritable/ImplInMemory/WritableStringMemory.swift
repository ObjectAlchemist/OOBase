//
//  WritableStringMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public typealias StringMemory = WritableStringMemory

public final class WritableStringMemory: OOWritableString {
    
    // MARK: - init
    
    init(optInitial: String?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableString
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: String {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: String?
    
}

// convenience initializer
public extension WritableStringMemory {
    
    public convenience init(_ initial: String) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
