//
//  InformOnSetInt.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class InformOnSetInt: OOWritableInt, OOEventInform {
    
    // MARK: init
    
    public init(_ decorated: OOWritableInt) {
        self.decorated = decorated
    }
    
    // MARK: protocol OOWritableInt
    
    public var hasValue: Bool {
        return decorated.hasValue
    }
    
    public var value: Int {
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
    
    private let decorated: OOWritableInt
    private var onEvent: (() -> ())?
    
    
}
