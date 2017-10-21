//
//  OOWritableBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: WritableBool
public protocol OOWritableBool: OOBool {

    var hasValue: Bool { get }
    var value: Bool { get set }
    func remove()
    
}

public final class OOWritableBoolFake: OOWritableBool {

    // MARK: - init
    
    public init(_ initial: Bool? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableBool
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: Bool {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: Bool?
    
}

open /*abstract*/ class OOWritableBoolWrap: OOWritableBool {
    
    // MARK: - init
    
    public init(origin: OOWritableBool) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableBool
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: Bool {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }
    
    // MARK: - private
    
    private let origin: OOWritableBool
    
}

