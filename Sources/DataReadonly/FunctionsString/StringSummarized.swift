//
//  StringSummarized.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

public final class StringSummarized: OOString {
    
    // MARK: - init
    
    public init(_ first: OOString, _ second: OOString, separatedBy separator: OOString) {
        self.first = first
        self.second = second
        self.separator = separator
    }
    
    // MARK: - protocol: OOString
    
    public var value: String {
        let firstPart = first.value
        let secondPart = second.value
        let concatenated: String
        if firstPart.characters.count == 0 {
            concatenated = secondPart
        } else if secondPart.characters.count == 0 {
            concatenated = firstPart
        } else {
            concatenated = "\(firstPart)\(separator.value)\(secondPart)"
        }
        return concatenated
    }
    
    // MARK: - private
    
    private let first: OOString
    private let second: OOString
    private let separator: OOString
    
}

// convenience initializer
public extension StringSummarized {
    
    public convenience init(_ first: String, _ second: String, separatedBy separator: String = "") {
        self.init(StringConst(first), StringConst(second), separatedBy: StringConst(separator))
    }
    
    public convenience init(_ first: String, _ second: String, separatedBy separator: OOString) {
        self.init(StringConst(first), StringConst(second), separatedBy: separator)
    }
    
    public convenience init(_ first: String, _ second: OOString, separatedBy separator: String = "") {
        self.init(StringConst(first), second, separatedBy: StringConst(separator))
    }
    
    public convenience init(_ first: OOString, _ second: String, separatedBy separator: String = "") {
        self.init(first, StringConst(second), separatedBy: StringConst(separator))
    }
    
    public convenience init(_ first: String, _ second: OOString, separatedBy separator: OOString) {
        self.init(StringConst(first), second, separatedBy: separator)
    }
    
    public convenience init(_ first: OOString, _ second: String, separatedBy separator: OOString) {
        self.init(first, StringConst(second), separatedBy: separator)
    }
    
    public convenience init(_ first: OOString, _ second: OOString, separatedBy separator: String = "") {
        self.init(first, second, separatedBy: StringConst(separator))
    }
    
}

public func +(left: String, right: OOString) -> OOString {
    return StringSummarized(left, right)
}

public func +(left: OOString, right: String) -> OOString {
    return StringSummarized(left, right)
}

public func +(left: OOString, right: OOString) -> OOString {
    return StringSummarized(left, right)
}
