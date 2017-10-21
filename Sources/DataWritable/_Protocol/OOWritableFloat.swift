//
//  OOWritableFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: WritableFloat
public protocol OOWritableFloat: OOFloat {

    var hasValue: Bool { get }
    var value: Float { get set }
    func remove()
    
}

public final class OOWritableFloatFake: OOWritableFloat {

    // MARK: - init
    
    public init(_ initial: Float? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableFloat
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: Float {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: Float?
    
}

open /*abstract*/ class OOWritableFloatWrap: OOWritableFloat {
    
    // MARK: - init
    
    public init(origin: OOWritableFloat) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableFloat
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: Float {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }
    
    // MARK: - private
    
    private let origin: OOWritableFloat
    
}
