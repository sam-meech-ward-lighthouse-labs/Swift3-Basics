//: [Previous](@previous)

//: # Enums

/*: 
 Enums are much more powerful in Swift than the C enums. In C, enums are simply constants that represent integer values.
 
 ```c
 enum Suit {
     clubs = 1,
     diamonds = 2,
     hearts = 3,
     spades = 4,
 };
 
 In Swift, they are much more flexible and do not have to provide a vlaue for each case of the enumeration. If you do want to provide a value for each case, you are no longer limited to just integers, you can now use Strings and Characters.

 ```
 */

//import Foundation
//
//enum Suit: String {
//    case clubs = "Clubs"
//    case diamonds = "Diamonds"
//    case hearts = "Hearts"
//    case spades = "Spades"
//}
//
//let suit = Suit.clubs


/*:
 They can even have methods associated with them.
 */

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

let suit = Suit.hearts
suit.simpleDescription()

/*:
 An instance of an enumeration member can have associated values. This is really handy when you want a variable value to be assicated with an enums constant state.
 */

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

//: [Next](@next)
