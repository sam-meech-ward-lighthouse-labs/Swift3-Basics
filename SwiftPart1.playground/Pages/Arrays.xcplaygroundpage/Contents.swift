//: [Previous](@previous)

//: # Arrays

/*:
 Arrays work very similarly to the way `NSArray` works in Objective-C
 
 We use square brackets `[]` to represent arrays in swift.
 */

//: ## Setting array values

import Foundation

let evenNumbers = [2, 4, 6, 8]

/*:
 Every variable in swift must have a type and arrays are no exeption. Swift will still implicitly set the type for you but you can explicitly tell Swift which type to use.
 */

let oddNumbers: [Double] = [1, 3, 5, 7]

let instructors: [String] = ["Sam", "Danny", 23]

//: ### Mutable Array

/*: 
 If you want to change the value of an array once it's already been created, you must use the `var` keyword to mark the array as Mutable.
*/

var oddNumbers: [Double] = [1, 3, 5, 7]
oddNumbers[1] = 9 // The index '1' must exist

/*:
 This is much nicer than having to switch to `NSMutableArray` in Objective-C.
 
 Just as we saw with Strings, arrays have a lot of useful methods you can use to make modifying them much easier. If I wanted to add another element onto the end of an array I can just use the `.append()` method. If I want to remove an element, I can use the `.remove(at:)` method.
 */

var oddNumbers: [Double] = [1, 3, 5, 7]
oddNumbers[1] = 9

oddNumbers.append(23)
oddNumbers.remove(at: 2)

print(oddNumbers) // 1 9 7 23

//: ## Getting array values

/*:
 You can get a single value by accessing its index.
 */

let secondEvenNumber = evenNumbers[1]

//: [Next](@next)
