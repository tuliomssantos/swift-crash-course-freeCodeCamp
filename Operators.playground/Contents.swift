import Foundation

let myAge = 33
let yourAge = 33

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "We have the same age"
}

let myMotherAge = myAge + 24

let doubleMyAge = myAge * 2

// 1. unary prefix
let foo = !true

// 2. unary postfix
let name = Optional("My Name")
let unaryPostfixName = name!
let unaryPostFix = name!

// 3. binary infix
let result = 1 + 3

// ternary operators
let age = 30
let message = age >= 18 ? "You are an adult" : "You arent an adult"
