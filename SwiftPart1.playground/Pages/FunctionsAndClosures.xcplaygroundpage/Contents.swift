//: [Previous](@previous)

//: # Functions and Closures

//: ## Functions

/*:
 You can create functions in swift using the `func` keyword:
 */

import Foundation

func greet() {
    print("hello")
}

greet()

/*:
 Functions can take parameters and specify a return type.
 */

func welcome(name: String, day: Int) -> String {
    return "Hello \(name), today is the \(day)th."
}

let result = welcome(name: "Anna", day: 11);

//: ### Comparrision:

/*:
 ```Objective-C
 - (NSString *)fullNameFromFirstName:(NSString *)firstName andLastName:(NSString *)lastName {
	NSString *fullName = [NSString stringWithFormat:@"%@ %@", firstName, lastName];
	return fullName;
 }
 ```
 */

func fullName(fromFirstName firstName: String, andLastName lastName: String) -> String {
    let fullName = firstName + " " + lastName
    return fullName
}

/*:
 Swift Function Signature:
 ```swift
 func functionName(firstArguemntLabel firstArguemntName: FirstArgumentType) -> ReturnType
 ```
 */



/*:
 [More about functions](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158)
 */

//: ## Closures

/*:
 Closures are unnamed functions. They are like Obj-C’s blocks.
 
 { (`parameters`) -> `return type` in
 `statements`
 }
 */

let wordPrinterClosure = { (word:String)->(Void) in
    print("\(word)")
}

/*:
 Like any other variable, Swift will infer the type. In this case it's a two way street.
 */

let wordPrinterClosure2: (String)->(Void) = { word in
    print("\(word)")
}

/*:
 Notice how the closure type is very similar to a function definition
 */

func makeGreetingFunction(name: String) -> String {
    return "Hello \(name)"
}

let makeGreetingClosure = { (name: String) -> (String) in
    return "Hello \(name)"
}

/*:
 Closures are first class citizens so you can pass them around just like anything else.
 */

func printGreeting(_ greeting: (String) -> (String)) {
    let string = greeting("Sam")
    print(string)
}

printGreeting(makeGreetingClosure)
//: > We have omitted the `greeting:` argument label here because the function `printGreeting` is descriptive enough that we shouldn't feel the need to see the word greeting again. We can omit an arguement's label by specifying an `_` where the label should be. Read the [Function Argument Labels and Parameter Names](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID166) section of the Swift Programming Guide.

//: ### Practical example

let numbers = [10, 7, 28, 9, 83, 73, 65, 2, 39]

let numbersMultipliedByThree = numbers.map( { (number: Int) -> Int in
    let result = number * 3
    return result
})

print(numbersMultipliedByThree)

/*:
 Swift provides a much nicer syntax for times when the closure’s type is already known:
 */

numbers.map { number in number * 3 }

/*:
 [More about closures](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID94)
 */

//: [Next](@next)
