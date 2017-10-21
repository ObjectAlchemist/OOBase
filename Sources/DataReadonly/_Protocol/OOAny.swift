//
//  OOAny.swift
//  OOSwift
//
//  Created by Karsten Litsche on 01.09.17.
//
//

// Note: Do not create classes of type OOAny. Use it for subclassing in other protocols only!
public /*abstract*/ protocol OOAny: class {

    var value: Any { get }
    
}
