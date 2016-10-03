# Swift 3
In 2014 Apple unexpectedly announced an entirely new programming language, Swift. This language has matured and grown over the past 2 years. It has become the prefered language for all apple programming and since being open sourced in 2015, is now a popular server side language.

## Playgrounds

Playgrounds are simple 'Live Coding' envoromnets. This means you can see the results of your code as you write it.

Open up Xcode and select `File, New, Playground` from the menu. Name your playground `PlaygroundDemo` and select iOS as your platform. Selecting the platfrom here just specifies which frameworks you will have access to in the playground. For example, in iOS we will have access to `UIKit` and on OSX we would have access to the `Cocoa` framework.

On the left, you have your text editor where you write all of your code. On the right you can see the results of your code being run.

Type `let hello = "Hi"` in the left and when your done typing, watch it get evaluated on the right. 

## Variables, Their Types, and Inference

Like Objective-C, Swift uses variables to store and refer to values. Swift also makes extensive use of variables whose values cannot be changed. These are known as constants.

You declare constants with the `let` keyword and variables with the `var` keyword.

```swift
var currentTemperature = 14
let hoursInADay = 24
```

#### Types

Types are the kind of variables and constants that we are creating. Strings, Integers, Arrays, etc.  
Note: in Swift, all types start with an uppercase letter.

Notice that we haven't told Swift what kind of variable we are creating, we just create the variable and assign a value to it. Swift can use these values to assume what kind of variable you wanted to create. In the above example, Swift will assume you want to create integers based on our number values, so `currentTemperature` and `hoursInADay` will automatically be an `Int` type. This is very different to Objective-c, where we had to explicitly say what the type of variable had to be.

```objective-c
int currentTemperature = 14;
NSString *greeting = @"Hello!";
```

Note: every variable in swift has a type weather you specify it or not.  
If you want to explicitly tell swift what type to use, you can specify it after the variable name.
If you don't imidiatly provide a value, you must specify a type for your variable.

```swift
var myVariable = 1 // Int
let myConstant = 2 // Int

var myTypedNumber : UInt = 8 // Int
let myTypedConstant : Double = 13 // Double

var greeting :String
greeting = “Hello, world!”
```

#### Semicolons

Notice that we haven't used any semicolons here. Semicolons are not required in swift and should be avoided; however, you're code will still run if you accidently put one int there.

#### Unicode variable names

This means you can use emojis as you variable names.
But don't.

Press `Command+Control+SpaceBar`

## String & Interpolation

There are 2 string types in Swift `String` which is similar to `NSString` and `Character` which is similar to `char`

```swift
let myString: String = "Hello"
let myCharacter: Character = "🙃"
```

#### A Quick note on opperators

`+ - * / =`
Opperators in Swift work similarly to the way they work in Objective-C, but they work even better in swift because they can apply to all objects.

**Swift**:

```swift
let greeting = "Hello" + " " + "World!"

var name = "Sam"
name += " Meech-Ward"
```

**Objective-C**:

```objective-c
NSMutableString *name = @"Sam";
[name appendString:@" Meech-Ward"];
```

#### Interpolation
Interpolation, used widely in swift, allows you to create a new string from other values.

```swift
let firstName = "Sam"
let lastName = "Meech-Ward"
let favoriteSwiftVersion = 3
let greeting = "\(firstName) \(lastName)'s favorite version of swift is Swift\(favoriteSwiftVersion)"
```

You can also inseart expressions

```swift
let multiplier = 3.0
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
```

#### String methods

Swift's Foundation Objects come with a lot of useful methods you can call on them to do pretty much anything you would want to do.
For example, if we wanted to convert a string to all uppercase letters we could call `uppercased()` on the string.

```swift
let myString = "My String"
print(myString.uppercased())
print(myString.lowercased())
print(myString.isEmpty())
```

If you're need to modify or manipulate a string in some way, check the existing methods on `String` to see if one of them does what you want.

## Optional Values
By default, all variables and constants in swift must have a value. This means that they can never be `nil` like they could in Objective-C. This is a really good thing because you no longer have to make sure that a variable has a value before using it.

```objective-c
NSNumber *greeting = @"Hello Lighthouse Labs!";

if (greeting) { 
	NSLog(@"%@", greeting);
} else {
	NSLog(@"Hi");
}
```

`greeting` could have been set to nil at some point, so we need to make sure it has a value before trying to print it.
With swift however, we no longer need to do this.

```
var greeting: String = "Hello Lighthouse Labs!"

print(greeting)
```

We know `greeting` has a value, because swift enforces that as a rule.

But what about those times when we don't know the value for a variable and we need to set something to nil? Like if we're tracking the user's location but can't get any location data:

```swift
var location: CLLocation = CLLocation(latitude: 0, longitude: 0)
```

Here we've things a 'hacky' way and set the latitude and longitude to both be 0 to represent that we don't know the user's location, but those are still valid latitude and longitude points. What we want is a way to represent that we just don't have a value to assign to our location variable, we don't know the user's location.

#### Optionals

Optionals allow your variables to be optional by allowing them to contain a value or not contain a value.

Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. So you now have the ability to have somthing like an `int` and have it not contain any value, instead of having to set it to 0 or -1 when you don't know the value.

We represent optionals in swift with the `?`. Just put a questionmark after the type that you want to be optional. It's like asking the type if there really is a value. After the question mark you can assign a value like normal, but now we can set the value to be nil to represent no value:

```swift
var optionalLocation: CLLocation? = nil
```

Optional variables are containers. Instead of an CLLocation, you have a box that could either contain a CLLocation, or nil.

So if we print out the value of an optional, we can see that the value is wrapped up.

```swift
var instructor: String? = "Sam"

print(instructor)
```

Since instructor is a container, not an actual value, to get at the value we have to unwrap it.

### Unwrapping optionals

To access the underlying value, you must unwrap your optionals.

#### Force Unwrapping:

We can force unwrap an optional using the `!`

```swift
var instructor: String? = "Sam"

print(instructor!)
```
The `!` says it all here, use this with caution. 
If a value exists, like it does in this case, then everything is safe and you unwrap the optional.
If a value doesn't exist, when the variable is set to nil, then your app crashes.

Only force unwrap when you are 100% sure that an optional contains a value.

#### Using temporary variables:

We'll get more into `if` statements later on, but a very good use of `if` in Swift is to safely unwrap optionals.

```swift
var instructor: String? = "Sam"

if let unwrappedInstructor = instructor {
    print(instructor)
    print(unwrappedInstructor)
}
```

Shaddowing: when you create a temporary variable name that obscures any other variables with the same name.

```swift
var instructor: String? = "Sam"

if let instructor = instructor {
    print(instructor)
}
```

## Arrays

Arrays work very similarly to the way `NSArray` works in Objective-C

We use square brackets `[]` to represent arrays in swift.

### Setting array values

```swift
let evenNumbers = [2, 4, 6, 8]
```

Every variable in swift must have a type and arrays are no exeption. Swift will still implicitly set the type for you but you can explicitly tell Swift which type to use.

```swift
let oddNumbers: [Double] = [1, 3, 5, 7]

let instructors: [String] = ["Sam", "Danny", 23] // Error, must be the same type
```

#### Mutable Array

If you want to change the value of an array once it's already been created, you must use the `var` keyword to mark the array as Mutable.

```swift
var oddNumbers: [Double] = [1, 3, 5, 7]
oddNumbers[1] = 9 // The index '1' must exist
```

This is much nicer than having to switch to `NSMutableArray` in Objective-C.

Just as we saw with Strings, arrays have a lot of useful methods you can use to make modifying them much easier. If I wanted to add another element onto the end of an array I can just use the `.append()` method. If I want to remove an element, I can use the `.remove(at:)` method.

```swift
var oddNumbers: [Double] = [1, 3, 5, 7]
oddNumbers[1] = 9

oddNumbers.append(23)
oddNumbers.remove(at: 2)

print(oddNumbers) // 1 9 7 23
```


### Getting array values

You can get a single value by accessing its index.

```swift
let secondEvenNumber = evenNumbers[1]
```

You can also access all the values in an array using a for in loop.

## Dictionaries

Dictionaries work very similarly to the way `NSDictionary` works in Objective-C.

We use square brackets `[]` to represent dictionaries in swift. This is similar to Arrays but we have a key, value pair.

### Setting Dictionary Values

```swift
let mathConstants = ["pi": 3.14159,
                     "tau": 6.283185]

```

Swift will still implicitly set the type for you but you can explicitly tell Swift which type to use.

```swift
let mathConstants: [String: Double] = ["pi": 3.14159,
                                       "tau": 6.283185]
```

Use the `var` keyword to make the dictionary mutable.

```swift
var mathConstants: [String: Double] = ["pi": 3.14159,
                                       "tau": 6.283185]
mathConstants["e"] = 2.71828
```

To delete a value, simply set it to nil

```swift
mathConstants["tau"] = nil
```

### Getting Dictionary values

You can get access any of the dictionary's values using its key.

```swift
let pi = mathConstants["pi"]
print(pi) // Optional(3.14159)
```

Accessing values in a dictioanry this way will always return an optional, because you might try to access a value that does not exist. 

```swift
if let pi = mathConstants["pi"] {
    print(pi) // 3.14159
}
```

You can also access all the values in a dictionary using a for in loop.

## `if` & `switch`

#### if

`if` works basically the same way as it does in Objective-C, exept now you don't need parenthesis.

```swift
let someConditional = true
if someConditional {
    print("true")
} else {
    print("false")
}
```
This will print 'true'

#### switch
`switch` statements are much more powerful in Swift than the wimpy C switch.

1. They can switch on any type of data.
2. They can handle complex cases.
3. They must be **exhaustive**. You have to explicitly say what you'll do in every possible case. For things with infinite cases, we have the default case.

```swift
var vegetableComment: String?

let vegetable = "red pepper"

switch vegetable {
case "celery":
    vegetableComment = "Add some raisins and make ants on a log."
case "cucumber", "watercress":
    vegetableComment = "That would make a good tea sandwich."
case let pepper where vegetable.hasSuffix("pepper"):
    vegetableComment = "Is it a spicy \(pepper)?"
default:
    vegetableComment =  nil
}

if let vegetableComment = vegetableComment {
    print(vegetableComment)
}
```

Notice that there are no `break` statements. In Swift, once a switch statement ends, it jumps to the end of the switch statement.

## Loops

```swift
// While
var count = 0
while count < 5 {
    print(count) // 0 1 2 3 4
    count += 1
}

let keepRepeating = false
repeat {
    print("Hello") // Hello
}
while keepRepeating
```

 Every for loop in Swift is a for in loop. This means that the old C style way of doing loops no longer exists in swift.
 ```c
 for (int i = 0; i < 5; i++) {
 	
 }
 ```
 In Swift, we use the in keyword and specify a range to itterate over.

```swift
// For In
for index in 0..<5 {
	print(index) // 0 1 2 3 4
}
```

We can also itterate over an array.

```swift
let instructors = ["Sam", "Danny", "Cory"]
for instructor in instructors {
    print(instructor) // Sam Danny Cory
}
```

If you need the integer index of each item as well as its value, use the enumerated() method to iterate over the array instead. For each item in the array, the enumerated() method returns a tuple composed of an integer and the item.

```
let instructors = ["Sam", "Danny", "Cory"]
for (index, instructor) in instructors.enumerated() {
    print("\(index): \(instructor)") // 1: Sam 2: Danny 3: Cory
}
```

We can even itterate over dictionaries

```swift
let interestingNumbers =
    ["Prime": [2, 3, 5, 7, 11, 13],
     "Fibonacci": [1, 1, 2, 3, 5, 8],
     "Square": [1, 4, 9, 16, 25]
]
for (kind, numbers) in interestingNumbers {
    print(kind)
    for number in numbers {
        print(number)
    }
}
```

* No parenthesis
* No C style loops

## Functions and Closures

### Functions

You can create functions in swift using the `func` keyword.

```swift
func greet() {
    print("hello")
}

greet() // call the greet function
```

Functions can take parameters and specify a return type.

```
func welcome(name: String, day: Int) -> String {
    return "Hello \(name), today is the \(day)th."
}

let result = welcome("Anna", day: 11); 
```

#### Comparrision:

**Objective-C:**

```Objective-C
- (NSString *)fullNameFromFirstName:(NSString *)firstName andLastName:(NSString *)lastName {
	NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
	return fullName;
}
```

**Swift:**

```swift
func fullName(fromFirstName firstName: String, andLastName lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}
```

[More about functions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158)

### Closures

Closures are unnamed functions. They are like Obj-C’s blocks.

{ (`parameters`) -> `return type` in  
    `statements`  
}


```swift
let wordPrinterClosure = { (word:String)->(Void) in
    print("\(word)")
}
```

Like any other variable, Swift will infer the type. In this case it's a two way street.

```
let wordPrinterClosure2: (String)->(Void) = { word in
    print("\(word)")
}
```

Notice how the closure type is very similar to a function definition

```swift
func makeGreeting(name: String) -> String {
	return "Hello \(name)"
}
```
becomes

```swift
let makeGreeting = { (name: String) -> (String) in 
	return "Hello \(name)" 
}
```

Closures are first class citizens so you can pass them around just like anything else.

```swift
let makeGreeting = { (name: String) -> (String) in 
	return "Hello \(name)" 
}

func printGreeting(greeting: (String) -> (String)) {
    let string = greeting("Sam")
    print(string)
}

printGreeting(makeGreeting)
```


#### Practical example

```swift
let numbers = [10, 7, 28, 9, 83, 73, 65, 2, 39]

let numbersMultipliedByThree = numbers.map( { (number: Int) -> Int in
    let result = number * 3
    return result
})

print(numbersMultipliedByThree)
```

Swift provides a much nicer syntax for times when the closure’s type is already known.

```swift
numbers.map { number in number * 3 }
```

[More about closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID94)

## Tuples

Tuples are a great way of grouping representing a group of values as one value.

```swift
let firstName = "Sam"
let lastName = "Meech-Ward"

let person = (firstName, lastName)
```

We create a tuple by enclosing all the peices of data we want inside parenthesis `()`. In this example, we have created a person tuple that consists of my first name and last name.

This tuples type here is set impliclity, but we can explicitly define the tuples type.

```swift
let person: (String, String, Int) = ("Sam", "Meech-Ward", 8)
```

If we want to then access these values we can use the item's index.

```swift
let person: (String, String, Int) = ("Sam", "Meech-Ward", 8)

let firstName = person.0
let lastName = person.1
let luckyNumber = person.2
```

Or we could access all the elements at once.

```swift
let person: (String, String, Int) = ("Sam", "Meech-Ward", 8)

let (firstName, _, luckyNumber) = person
```

Here we have created a variable for the first name, we have omited creating a variable for last name by using an `_` and we have created a variable for lucky number.

This is starting to seem kind of like an array, but an advantage here is that we can specify the type for each individual index. We can also use labels to specify what each index is.

```swift
let person: (firstName: String, lastName: String, luckyNumber: Int) = (firstName: "Sam", luckyNumber: 8, lastName: "Meech-Ward")

print(person.firstName) // Sam
print(person.lastName) // Meech-Ward
print(person.luckyNumber) // 8
```

Now it's starting to look more like an object or a struct that just has some simple properties. So when should you use a tuple instead of a class or struct? 
You should use tuples for short lived operations, such as passing data to or recieving data from a function.

## Classes & Structs

When we talked about Obj-C classes, we said you can think of them as a “blueprint” for creating “objects”.
 
In Swift, you can create two kinds of blueprints, Classes and Structs

#### Classes

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

**Swift:**
```swift
class Shape {

	var numberOfSides = 0
	
	func description() -> String {
		return “A shape with \(numberOfSides) sides.”
	}
}

var polygon = Shape()
polygon.numberOfSides = 4

var square = polygon

polygon.numberOfSides = 5

print(polygon.numberOfSides) // 5
print(square.numberOfSides) // 5
// Both variables point to the same object
```

A method on a class that overrides a superclass’s implementation should be prefixed with the ‘override’ keyword.

```swift
class MyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View Did Load")
    }
    
}
```

Properties can have custom getter and setter blocks, as opposed to Obj-C’s accessor methods.
You can also provide property observers to execute before and after a property is changed.

```swift
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
```


#### Structs

Structs are similar to Classes and are declared in almost the same way:
The main difference between Classes and Structs is that Structs they *cannot be subclassed* and any instance of them are *passed by value* NOT by reference. 

```swift
struct Shape {

	var numberOfSides = 0
	
	func description() -> String {
		return “A shape with \(numberOfSides) sides.”
	}
}

var polygon = Shape()
polygon.numberOfSides = 4

var square = polygon

polygon.numberOfSides = 5

print(polygon.numberOfSides) // 5
print(square.numberOfSides) // 4
// Because structs are passed by value, square is an entirely new object with the same value as polygon at the time it was created.
```

A method on a struct that changes properties of the struct should be prefixed with the ‘mutating’ keyword.

```swift
struct Shape {
    
    var numberOfSides = 0

    mutating func modifyNumberOfSides() {
        numberOfSides += 1
    }
}
```


#### Initializers

Just like Objective-C objects, both Structs and Classes in Swift have initializers. They are special types of closures.

```swift
struct Shape {

	var numberOfSides = 0
	
	init(numberOfSides: Int) {
		self.numberOfSides = numberOfSides
	}
	
	func description() -> String {
		return “A shape with \(numberOfSides) sides.”
	}
}
```


## Enums

Enums are much more powerful in Swift than the C enums. In C, enums are simply constants that represent integer values.

```c
enum Suit {
    clubs = 1,
    diamonds = 2,
    hearts = 3,
    spades = 4,
};
```
In Swift, they are much more flexible and do not have to provide a vlaue for each case of the enumeration. If you do want to provide a value for each case, you are no longer limited to just integers, you can now use Strings and Characters.

```swift
enum Suit: String {
    case clubs = "Clubs"
    case diamonds = "Diamonds"
    case hearts = "Hearts"
    case spades = "Spades"
}
```

They can even have methods associated with them.

```swift
enum Suit: String {
    case clubs = "Clubs"
    case diamonds = "Diamonds"
    case hearts = "Hearts"
    case spades = "Spades"
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "♠️"
        case .hearts:
            return "♥️"
        case .diamonds:
            return "♦️"
        case .clubs:
            return "♣️"
        }
    }
}
```

An instance of an enumeration member can have associated values. This is really handy when you want a variable value to be assicated with an enums constant state.

```swift
enum Status {
    case onTime
    case delayed(minutes: Int)
}

let status = Status.delayed(minutes: 20)

switch status {
case .onTime:
    print("Yay! on time")
case .delayed(let minutes):
    print("Boo! delayed by \(minutes) minutes")
}
```

## Protocols

Protocols in Swift are very similar to protocols in Objective-C but they can be adopted by classes, structs, or enums.

```swift
protocol Door {
	 var isLocked: Bool { get set }
    func open()
    func close()
}

struct SlidingDoor: Door {
    
    var isLocked: Bool = false
    
    func open() {
        // Slide to open
    }
    
    func close() {
        // Slide to close
    }
    
}
```

## Extensions

Extensions are like Obj-C’s categories. Use them to add functionality to existing types, even types that you didn't write yourself.

```swift
extension CGRect {
    func prettyPrint() {
        let string = "x: \(self.origin.x)\ny: \(self.origin.y)\nwidth: \(self.size.width)\nheight: \(self.size.height)"
        print(string)
    }
}

let frame = CGRect(x: 1, y: 2, width: 3, height: 3)

frame.prettyPrint()
```


## Resources
* [Swift 3 Language Guide](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html#//apple_ref/doc/uid/TP40014097-CH5-ID309)
* [Swift 3 Cheat Sheet and Quick Reference](https://www.raywenderlich.com/73967/swift-cheat-sheet-and-quick-reference)
* [Swift 3 Style Guide](https://github.com/raywenderlich/swift-style-guide/tree/swift3)