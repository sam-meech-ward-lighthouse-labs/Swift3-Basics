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

class Shape {
    
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

struct Shape {
    
    var numberOfSides = 0
    
    mutating func modifyNumberOfSides() {
        numberOfSides += 1
    }
}

//: ## Initializers

/*:
 Just like Objective-C objects, both Structs and Classes in Swift have initializers. They are special types of closures:
 */

struct Shape {
    
    var numberOfSides = 0
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func description() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

//: [Next](@next)
