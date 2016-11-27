//: [Previous](@previous)

//: # Tuples

/*:
 Tuples are a great way of grouping representing a group of values as one value.
 */

import Foundation

let firstName1 = "Sam"
let lastName1 = "Meech-Ward"

let person1 = (firstName1, lastName1)

/*:
 We create a tuple by enclosing all the peices of data we want inside parenthesis `()`. In this example, we have created a person tuple that consists of my first name and last name.
 
 This tuples type here is set impliclity, but we can explicitly define the tuples type.

 */

let person2: (String, String, Int) = ("Sam", "Meech-Ward", 8)

/*:
 If we want to then access these values we can use the item's index.
 */

let firstName2 = person2.0
let lastName2 = person2.1
let luckyNumber2 = person2.2

/*:
 Or we could access all the elements at once.
 */

let person3: (String, String, Int) = ("Sam", "Meech-Ward", 8)

let (firstName3, _, luckyNumber3) = person3

/*:
 This is starting to seem kind of like an array, but an advantage here is that we can specify the type for each individual index. We can also use labels to specify what each index is.
 */

let person4: (firstName: String, lastName: String, luckyNumber: Int) = (firstName: "Sam", luckyNumber: 8, lastName: "Meech-Ward")

print(person4.firstName) // Sam
print(person4.lastName) // Meech-Ward
print(person4.luckyNumber) // 8

/*:
 Now it's starting to look more like an object or a struct that just has some simple properties. So when should you use a tuple instead of a class or struct?
 You should use tuples for short lived operations, such as passing data to or recieving data from a function.
 */

//: [Next](@next)
