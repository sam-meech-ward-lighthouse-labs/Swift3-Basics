//: [Previous](@previous)

//: # `if` & `switch`

//: ## if

/*:
 `if` works basically the same way as it does in Objective-C, exept now you don't need parenthesis.
 */

import Foundation

let someConditional = true
if someConditional {
    print("true")
} else {
    print("false")
}

//: ## switch

/*:
 `switch` statements are much more powerful in Swift than the wimpy C switch.
 
 1. They can switch on any type of data.
 2. They can handle complex cases.
 3. They must be **exhaustive**. You have to explicitly say what you'll do in every possible case. For things with infinite cases, we have the default case.
 */

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

/*:
 > There are no `break` statements. In Swift, once a switch statement ends, it jumps to the end of the switch statement.
 */

//: [Next](@next)
