//: [Previous](@previous)

//: # Classes & Structs
/*: 
 When we talked about Obj-C classes, we said you can think of them as a “blueprint” for creating “objects”.
    
 In Swift, you can create two kinds of blueprints, Classes and Structs
*/

//: ## Classes

/*:
 Classes in swift are similar to classes in Objective-C. They can even be used inside Objective-C as native objects, and Objective-C objects can be used inside Swift as native objects.
 
 In Objective-C you create a .h and .m file for a single class, then specify all public methods and properties in the header file and all the logic in the implementation file.
 
 **Objective-C:**
 Shape.h
 
 ```objective-c
 @interface Shape
 
 @property (nonatomic) int numberOfSides;
 
 @end
 ```
 Shape.m
 
 ```
 @implementation Shape
 
 - (instancetype)init {
	self = [super init];
	if (self) {
 _numberOfSides = 0;
	}
	return self;
 }
 
 - (NSString *)description {
	return [NSString stringWithFormat:@"A shape with %i sides.", self.numberOfSides];
 }
 
 @end
 
 Shape *shape = [[Shape alloc] init];
 shape.numberOfSides = 5;
 
 ```
 
 In Swift, you have a .swift file and all of you logic goes in there.
 */

import Foundation

class Shape {
    
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
print(square.numberOfSides) // 5
// Both variables point to the same object

/*:
 A method on a class that overrides a superclass’s implementation should be prefixed with the ‘override’ keyword.
 */

import UIKit

class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View Did Load")
    }
    
}

/*:
 Properties can have custom getter and setter blocks, as opposed to Obj-C’s accessor methods.
 
 You can also provide property observers to execute before and after a property is changed.
 */

class AnotherShape {
    
    var numberOfSides = 0  {
        didSet {
            if numberOfSides < 0 {
                numberOfSides  = 0
            }
        }
    }
    
    // Computed properties just have a getter method, kind of like 'readonly' in Objective-C
    var typeOfShape: String {
        get {
            switch numberOfSides {
            case 3:
                return "Triangle"
            case 4:
                return "Square"
            default:
                return "Polygon"
            }
        }
    }
    
}


//: [Next](@next)
