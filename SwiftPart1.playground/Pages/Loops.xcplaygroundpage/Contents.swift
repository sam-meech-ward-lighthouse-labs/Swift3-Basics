//: [Previous](@previous)

//: # Loops

/*:
 While
 */

var count = 0
while count < 5 {
    print(count) // 0 1 2 3 4
    count += 1
}

let keepRepeating = false
repeat {
    print("Hello") // Hello
} while keepRepeating

/*:
 Every for loop in Swift is a for in loop. This means that the old C style way of doing loops no longer exists in swift.
 ```c
 for (int i = 0; i < 5; i++) {
 
 }
 ```
  In Swift, we use the in keyword and specify a range to itterate over.
 */

for index in 0..<5 {
    print(index) // 0 1 2 3 4
}

/*:
 We can also itterate over an array.
 */

let instructors = ["Nikita", "Shahin"]
for instructor in instructors {
    print(instructor) // Sam Danny Cory
}

/*:
 If you need the integer index of each item as well as its value, use the enumerated() method to iterate over the array instead. For each item in the array, the enumerated() method returns a tuple composed of an integer and the item.
 */

let moreInstructors = ["Sam", "Danny", "Cory"]
for (index, instructor) in moreInstructors.enumerated() {
    print("\(index): \(instructor)") // 1: Sam 2: Danny 3: Cory
}

/*:
 We can even itterate over dictionaries
 */

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


//: [Next](@next)
