//: [Previous](@previous)

//: # Optional Values

/*:
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
 */

import Foundation

var greeting: String = "Hello Lighthouse Labs!"

print(greeting)

/*:
 We know `greeting` has a value, because swift enforces that as a rule.
 
 But what about those times when we don't know the value for a variable and we need to set something to nil? Like if we're tracking the user's location but can't get any location data:
 */

var location: CLLocation = CLLocation(latitude: 0, longitude: 0)

/*:
 Here we've things a 'hacky' way and set the latitude and longitude to both be 0 to represent that we don't know the user's location, but those are still valid latitude and longitude points. What we want is a way to represent that we just don't have a value to assign to our location variable, we don't know the user's location.
 */

//: ## Optionals

/*:
 Optionals allow your variables to be optional by allowing them to contain a value or not contain a value.
 
 Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. So you now have the ability to have somthing like an `int` and have it not contain any value, instead of having to set it to 0 or -1 when you don't know the value.
 
 We represent optionals in swift with the `?`. Just put a questionmark after the type that you want to be optional. It's like asking the type if there really is a value. After the question mark you can assign a value like normal, but now we can set the value to be nil to represent no value.
 */

var optionalLocation: CLLocation? = nil

/*:
 Optional variables are containers. Instead of an CLLocation, you have a box that could either contain a CLLocation, or nil.
 
 So if we print out the value of an optional, we can see that the value is wrapped up.
 */
var instructor: String? = "Sam"

print(instructor)

/*:
 Since this is a container, not an actual value, to get at the value we have to unwrap it.
 */

//: ## Unwrapping optionals

/*:
 To access the underlying value, you must unwrap your optionals.
 */

//: ### Force Unwrapping

/*:
 We can force unwrap an optional using the `!`.  
 
 The `!` says it all here, use this with caution.
 If a value exists, like it does in this case, then everything is safe and you unwrap the optional.
 If a value doesn't exist, when the variable is set to nil, then your app crashes.
 
 Only force unwrap when you are 100% sure that an optional contains a value.
 */


print(instructor!)

//: ### Unwrapping using temporary variables

/*:
 We'll get more into `if` statements later on, but a very good use of `if` in Swift is to safely unwrap optionals.
 */

if let unwrappedInstructor = instructor {
    print(instructor)
    print(unwrappedInstructor)
}

/*:
 Shaddowing: when you create a temporary variable name that obscures any other variables with the same name.
 */

if let instructor = instructor {
    print(instructor)
}
 

//: [Next](@next)
