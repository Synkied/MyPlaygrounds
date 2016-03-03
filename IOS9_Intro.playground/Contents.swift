//: Playground - noun: a place where people can play

import UIKit

let firstName = "Quentin"
let lastName = "Synkied"

let name = "\(firstName) \(lastName)"

var score = 98

switch score{
case 0...59:
    print("You scored an F, congrats :)")
    
case 60...69:
    print("Your score was a D")
    
case 70...79:
    print("You score was a C")
    
case 80...89:
    print("Your score was a B")
case 90...99:
    print("You scored an A !")
case 100:
    print("Congratulations, you scored a perfect 100")
default:break
}

var temp = 7
var isFreezing : Bool

isFreezing = temp <= 5 ? true : false

var statement : String = isFreezing == true ? "it's freezing" : "it's not freezing"

// for loop

for var i = 1; i <= 10; i++ {
    print ("i = \(i).")
}


// for / in loop

//array

let names = ["Walter", "Peter", "Olivia"]

for name in names{
    print(name)
}

//dictonary

let inventory = [1: "Windows", 2: "Mac OSX", 3: "Linux"]

for (key, value) in inventory{
    print("\(key): \(value)")
}

var x = 1

while x <= 10 {
    // run code
    print (x)
    // increment x
    x++
}


repeat {
    print(x)
    x++
} while x <= 100










