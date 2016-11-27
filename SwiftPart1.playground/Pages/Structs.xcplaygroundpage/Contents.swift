//: [Previous](@previous)

import Foundation

//: ## Structs

/*:
 Structs are similar to Classes and are declared in almost the same way:
 The main difference between Classes and Structs is that Structs they *cannot be subclassed* and any instance of them are *passed by value* NOT by reference.
 */

struct Shape {
    
    var numberOfSides = 0
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var polygon = Shape()
polygon.numberOfSides = 4

var square = polygon

polygon.numberOfSides = 5

print(polygon.numberOfSides) // 5
print(square.numberOfSides) // 4
// Because structs are passed by value, square is an entirely new object with the same value as polygon at the time it was created.

/*:
 A method on a struct that changes properties of the struct should be prefixed with the ‘mutating’ keyword.
 */

struct AnotherShape {
    
    var numberOfSides = 0
    
    mutating func modifyNumberOfSides() {
        numberOfSides += 1
    }
}

//: ## Initializers

/*:
 Just like Objective-C objects, both Structs and Classes in Swift have initializers. They are special types of closures:
 */

struct ShapeAgain {
    
    var numberOfSides = 0
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


//: [Next](@next)
