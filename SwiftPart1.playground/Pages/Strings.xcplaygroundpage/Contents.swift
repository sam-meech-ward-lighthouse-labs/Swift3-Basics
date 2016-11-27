//: [Previous](@previous)

//: # String & Interpolation

import Foundation

/*:
 There are 2 string types in Swift `String` which is similar to `NSString` and `Character` which is similar to `char`
 */

let myString: String = "Hello"
let myCharacter: Character = "🙃"

/*:
 #### A Quick note on opperators
 
 `+ - * / =`  
 
 Opperators in Swift work similarly to the way they work in Objective-C, but they work even better in swift because they can be applied to any objects.
 */

let greeting = "Hello" + " " + "World!"

var name = "Sam"
name += " Meech-Ward"

/*:
 This is much nicer than the Objective-C way of concatinating strings.
 
 ```objective-c
 NSMutableString *name = @"Sam";
 [name appendString:@" Meech-Ward"];
 ```
 */

//: ## Interpolation

/*:
 Interpolation, used widely in swift, allows you to create a new string from other values.
 */

let firstName = "Sam"
let lastName = "Meech-Ward"
let favoriteSwiftVersion = 3
let swiftGreeting = "\(firstName) \(lastName)'s favorite version of swift is Swift\(favoriteSwiftVersion)"

/*:
 You can also inseart expressions.
 */

let multiplier = 3.0
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

//: ## String methods

/*:
 Swift's Foundation Objects come with a lot of useful methods attached to them that you can call to do pretty much anything you would want to do.  
 
 For example, if we wanted to convert a string to all uppercase letters we could call `uppercased()` on the string.
 */

let anotherString = "My String"
print(anotherString.uppercased())
print(anotherString.lowercased())
print(anotherString.isEmpty)

/*:
 If you're need to modify or manipulate a string in some way, check the existing methods on `String` to see if one of them does what you want.
 */

//: [Next](@next)
