//: [Previous](@previous)

//: # Dictionaries

/* :
 Dictionaries work very similarly to the way `NSDictionary` works in Objective-C.
 
 We use square brackets `[]` to represent dictionaries in swift. This is similar to Arrays but we have a key, value pair.
 */

//: ## Setting Dictionary Values

import Foundation

let mathConstants = ["pi": 3.14159,
                     "tau": 6.283185]

/*:
 Swift will still implicitly set the type for you but you can explicitly tell Swift which type to use.
 */

let mathConstantsWithType: [String: Double] = ["pi": 3.14159,
                                               "tau": 6.283185]

/*:
 Use the `var` keyword to make the dictionary mutable.
 */

var mutableMathConstants: [String: Double] = ["pi": 3.14159,
                                              "tau": 6.283185]
mutableMathConstants["e"] = 2.71828

/*:
 To delete a value, simply set it to nil
 */

mutableMathConstants["tau"] = nil

//: ## Getting Dictionary Values

/*:
 You can get access any of the dictionary's values using its key.
 */

let pi = mathConstants["pi"]
print(pi) // Optional(3.14159)

/*:
 Accessing values in a dictioanry this way will always return an optional, because you might try to access a value that does not exist. 
 */

if let pi = mathConstants["pi"] {
    print(pi) // 3.14159
}

//: [Next](@next)
