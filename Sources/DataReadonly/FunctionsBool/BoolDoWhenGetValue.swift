//
//  BoolDoWhenGetValue.swift
//  OOExamples
//
//  Created by Karsten Litsche on 22.10.17.
//  
//

/** Executes an action when fetching the value. */
public final class BoolDoWhenGetValue: OOBool {
    
    // MARK: - init
    
    public init(_ decorated: OOBool, action: @escaping (Bool) -> OOExecutable) {
        self.decorated = decorated
        self.action = action
    }
    
    // MARK: - protocol: OOBool
    
    public var value: Bool {
        let result = decorated.value
        action(result).execute()
        return result
    }
    
    // MARK: - private
    
    private let decorated: OOBool
    private let action: (Bool) -> OOExecutable
    
}

/** Convenience initializer. */
public extension BoolDoWhenGetValue {
  
    public convenience init(_ value: Bool, action: @escaping (Bool) -> OOExecutable) {
        self.init(BoolConst(value), action: action)
    }

    public convenience init(_ decorated: OOBool, action: OOExecutable) {
        self.init(decorated, action: { _ in action })
    }

    public convenience init(_ value: Bool, action: OOExecutable) {
        self.init(BoolConst(value), action: { _ in action })
    }
    
}
