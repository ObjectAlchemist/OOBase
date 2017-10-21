//
//  OOWritableString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// protocol prefix: WritableString
public protocol OOWritableString: OOString {

    var hasValue: Bool { get }
    var value: String { get set }
    func remove()
    
}

public final class OOWritableStringFake: OOWritableString {

    // MARK: - init
    
    public init(_ initial: String? = nil) {
        self.stored = initial
    }
    
    // MARK: - protocol: OOWritableString
    
    public var hasValue: Bool {
        return stored != nil
    }
    
    public var value: String {
        get { return stored! }
        set(value) { stored = value }
    }
    
    public func remove() {
        stored = nil
    }
    
    // MARK: - private
    
    private var stored: String?
    
}

open /*abstract*/ class OOWritableStringWrap: OOWritableString {
    
    // MARK: - init
    
    public init(origin: OOWritableString) {
        self.origin = origin
    }
    
    // MARK: - protocol: OOWritableString
    
    public var hasValue: Bool {
        return origin.hasValue
    }
    
    public var value: String {
        get { return origin.value }
        set(value) { origin.value = value }
    }
    
    public func remove() {
        origin.remove()
    }
    
    // MARK: - private
    
    private let origin: OOWritableString
    
}
