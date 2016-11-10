//: Playground - noun: a place where people can play

import Foundation

let str = "Hello, my playground"

var newStr = str + " foo"

let baz = newStr.uppercased()

var wee: Int? = nil         // varname: SomeType? is how you declare an optional

if baz.contains("GROUND") {
  wee = 3
}

if let weePresent = wee {   // unwrapping optional...
  print("Wee is present!")
} else {
  print("It's not.")
}

print (newStr)
print (wee)             // prints Optional(3), not just 3, because wee is an optional value

let someRange = 0...5   // ..< and ... in Swift are opposite of Ruby's .. and ... !!!

for i in someRange {
  print(i)
}

let myArray = [78,7,8]

var growingArray = [Int]()

myArray.forEach {(i: Int) in
  print("That number is \(i)")

  if i > 2 { growingArray.append(i + 23) }
}

print(growingArray)
