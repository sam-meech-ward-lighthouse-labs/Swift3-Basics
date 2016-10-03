//: [Previous](@previous)

//: # Variables, Their Types, and Inference

/*:
 Like Objective-C, Swift uses variables to store and refer to values. Swift also makes extensive use of variables whose values cannot be changed. These are known as constants.
 
 You declare constants with the `let` keyword and variables with the `var` keyword.
 */

import Foundation

var currentTemperature = 14
let hoursInADay = 24

//: ## Types

/*:
 Types are the kind of variables and constants that we are creating. Strings, Integers, Arrays, etc.
 > In Swift, all types start with an uppercase letter.
 
 Notice that we haven't told Swift what kind of variable we are creating, we just create the variable and assign a value to it. Swift can use these values to assume what kind of variable you wanted to create. In the above example, Swift will assume you want to create integers based on our number values, so `currentTemperature` and `hoursInADay` will automatically be an `Int` type. This is very different to Objective-c, where we had to explicitly say what the type of variable had to be.
 
 ```objective-c
 int currentTemperature = 14;
 NSString *greeting = @"Hello!";
 ```
 
 > Every variable in swift has a type weather you specify it or not.
 If you want to explicitly tell swift what type to use, you can specify it after the variable name.
 */

var myTypedNumber : UInt = 8 // Int
let myTypedConstant : Double = 13 // Double

/*:
 If you don't imidiatly provide a value, you must specify a type for your variable.
 */

var greeting :String
greeting = "Hello, world!"

/*:
 #### Semicolons
 
 Notice that we haven't used any semicolons here. Semicolons are not required in swift and should be avoided; however, you're code will still run if you accidently put one int there.
 
 #### Unicode variable names
 
 Swift allows unicode characters in it's programming language. This means you can use emojis as you variable names... But don't.
 
 Press `Command+Control+SpaceBar`
*/

let 😀: Int = 1

//: [Next](@next)
