//
//  WritableFloatMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public typealias FloatMemory = WritableFloatMemory

public final class WritableFloatMemory: OOWritableFloat {
    
    // MARK: - init
    
    init(optInitial: Float?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableFloat
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: Float {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: Float?
    
}

// convenience initializer
public extension WritableFloatMemory {
    
    public convenience init(_ initial: Float) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
