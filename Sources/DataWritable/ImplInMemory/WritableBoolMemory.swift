//
//  WritableBoolMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public typealias BoolMemory = WritableBoolMemory

public final class WritableBoolMemory: OOWritableBool {
    
    // MARK: - init
    
    init(optInitial: Bool?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableBool
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: Bool {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: Bool?
    
}

// convenience initializer
public extension WritableBoolMemory {
    
    convenience init(_ initial: Bool) {
        self.init(optInitial: initial)
    }
    
    convenience init() {
        self.init(optInitial: nil)
    }
    
}
