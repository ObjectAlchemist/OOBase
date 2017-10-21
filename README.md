# OOBase

## Description
This repository contains the basic essentials to write object oriented code.

## Object orientation
All objects follow these rules:
- they are immutable, except 
    - the 'Memory' objects, these are low level in memory stores
    - some bridge objects to the apple api
- they implement a protocol that defines the api of the object
    - an object is only allowed to implement one protocol
    - only a decorator may implement a second one
- they use dependency injection, but only protocols will be injected
- they are final, except
    - the 'Wrap' objects, these objects are designed to derive for object compositions

## Usage
Add it via carthage to your project dependencies.

## Regenerate project
The xcodeproj can be generated by using [Phoenx](https://github.com/jensmeder/Phoenx). 
However, there are following notes:
- The dependency to the framework "Foundation" should be removed (the cocoapods base library used by phoenx add it by default even it's not required).
- After recreation there are two schemes. You can remove the non-shared scheme. The shared scheme is required for carthage compatibility.
