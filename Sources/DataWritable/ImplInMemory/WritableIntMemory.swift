//
//  WritableIntMemory.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public typealias IntMemory = WritableIntMemory

public final class WritableIntMemory: OOWritableInt {
    
    // MARK: - init
    
    init(optInitial: Int?) {
        store = optInitial
    }
    
    // MARK: - protocol: OOWritableInt
    
    public var hasValue: Bool {
        return store != nil
    }
    
    public var value: Int {
        get { return store! }
        set(value) { store = value }
    }
    
    public func remove() {
        store = nil
    }
    
    // MARK: - private
    
    private var store: Int?
    
}

// convenience initializer
public extension WritableIntMemory {
    
    public convenience init(_ initial: Int) {
        self.init(optInitial: initial)
    }
    
    public convenience init() {
        self.init(optInitial: nil)
    }
    
}
