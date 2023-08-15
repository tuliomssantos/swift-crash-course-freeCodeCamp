import Foundation

// let => immutable
// var => mutable

let foo = "Foo"

var foo2 = foo // copy the value of the foo

foo2 = "foo2"

foo // foo remains with its initial value

let names = ["Foo", "Bar"]

var copyNames = names

copyNames.append("Baz")

names

copyNames
