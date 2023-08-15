import Foundation

let myName = "Jhon"
let myAge = 32
let yourName = "Joe"
let yourAge = 54

if myName == "jhon" {
    "Your name is \(myName)"
} else {
    "Oops, I guessed it wrong"
}

if myName == "Jhon" {
    "Now I guessed it correctly"
} else if myName == "Foo" {
    "Are you Foo?"
} else {
    "Okay I give up"
}


if myName == "Jhon" && myAge == 32 {
    "My name is Jhon and Im 32"
} else if myAge == 32 {
    "I only guessed the age right"
} else {
    "I don't know what I'm doing"
}


let a = 10
let b = 5

if a > b {
    print("a is greater than b")
} else {
    print("b is greater than a")
}

if a == b {
    print("a is equal to b")
} else {
    print("a is not equal to b")
}

if a >= b {
    print("a is greater than or equal to b")
} else {
    print("a is less than b")
}

if a < b {
    print("a is less than b")
} else {
    print("a is greater than or equal to b")
}

if a != b {
    print("a is not equal to b")
} else {
    print("a is equal to b")
}


let age = 25
let hasLicense = true
let hasCar = false

if age >= 18 && hasLicense {
    print("You are old enough to drive")
} else {
    print("You are not old enough to drive")
}

if hasLicense && hasCar {
    print("You can drive your car")
} else if hasLicense && !hasCar {
    print("You can drive someone else's car")
} else {
    print("You cannot drive")
}

if age >= 18 && (hasLicense || hasCar) {
    print("You can legally drive")
} else {
    print("You cannot legally drive")
}
