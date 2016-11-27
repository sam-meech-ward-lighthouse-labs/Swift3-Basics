//: [Previous](@previous)

//: # Protocols

/*:
 Protocols in Swift are very similar to protocols in Objective-C but they can be adopted by classes, structs, or enums.
 */

import Foundation

protocol Door {
    var isLocked: Bool { get set }
    func open()
    func close()
}

struct SlidingDoor: Door {
    
    var isLocked: Bool = false
    
    func open() {
        // Slide to open
        print("Slide To Open")
    }
    
    func close() {
        // Slide to close
        print("Slide To Close")
    }
    
}

let aDoor: Door = SlidingDoor()
aDoor.open()
aDoor.close()

//: [Next](@next)
