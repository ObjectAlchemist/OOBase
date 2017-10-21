//
//  InformOnSetFloat.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class InformOnSetFloat: OOWritableFloat, OOEventInform {
    
    // MARK: init
    
    public init(_ decorated: OOWritableFloat) {
        self.decorated = decorated
    }
    
    // MARK: protocol OOWritableFloat
    
    public var hasValue: Bool {
        return decorated.hasValue
    }
    
    public var value: Float {
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
    
    private let decorated: OOWritableFloat
    private var onEvent: (() -> ())?
    
}
