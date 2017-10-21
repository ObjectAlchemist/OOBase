//
//  InformOnSetString.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class InformOnSetString: OOWritableString, OOEventInform {
    
    // MARK: init
    
    public init(_ decorated: OOWritableString) {
        self.decorated = decorated
    }
    
    // MARK: protocol OOWritableString
    
    public var hasValue: Bool {
        return decorated.hasValue
    }
    
    public var value: String {
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
    
    private let decorated: OOWritableString
    private var onEvent: (() -> ())?
    
}
