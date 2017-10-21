//
//  InformOnSetBool.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class InformOnSetBool: OOWritableBool, OOEventInform {
    
    // MARK: init
    
    public init(_ decorated: OOWritableBool) {
        self.decorated = decorated
    }
    
    // MARK: protocol OOWritableBool
    
    public var hasValue: Bool {
        return decorated.hasValue
    }
    
    public var value: Bool {
        get {
            return decorated.value
        }
        set(value) {
            decorated.value = value
            onEvent?()
        }
    }
    
    public func remove() {
        decorated.remove()
        onEvent?()
    }
    
    // MARK: protocol OOEventInform
    
    public func set(onEvent: @escaping () -> ()) {
        self.onEvent = onEvent
    }
    
    // MARK: private
    
    private let decorated: OOWritableBool
    private var onEvent: (() -> ())?
    
}
