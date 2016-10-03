//: [Previous](@previous)

//: # Extensions

/*:
 Extensions are like Obj-C’s categories. Use them to add functionality to existing types, even types that you didn't write yourself.
 */

import Foundation

extension CGRect {
    func prettyPrint() {
        let string = "x: \(self.origin.x)\ny: \(self.origin.y)\nwidth: \(self.size.width)\nheight: \(self.size.height)"
        print(string)
    }
}

let frame = CGRect(x: 1, y: 2, width: 3, height: 3)

frame.prettyPrint()

//: [Next](@next)
