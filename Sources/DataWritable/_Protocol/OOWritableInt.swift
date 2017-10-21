//
//  OOWritableInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: WritableInt
public protocol OOWritableInt: OOInt {

    var hasValue: Bool { get }
    var value: Int { get set }
    func remove()
    
}

public final class OOWritableIntFake: OOWritableInt {

    // MARK: - init
    
    public init(_ initial: Int? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableInt
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: Int {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: Int?
    
}

open /*abstract*/ class OOWritableIntWrap: OOWritableInt {
    
    // MARK: - init
    
    public init(origin: OOWritableInt) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableInt
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: Int {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }
    
    // MARK: - private
    
    private let origin: OOWritableInt
    
}
