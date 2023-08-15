import Foundation

/* Here are the possible syntaxes for functions in Swift:

 1. Function declaration with no parameters and no return value:
 
 func functionName() {
     // function body
 }
 
 2. Function declaration with parameters and no return value:
 
 func functionName(parameter1: Type1, parameter2: Type2, ...) {
     // function body
 }
 
 3. Function declaration with no parameters and a return value:
 
 func functionName() -> ReturnType {
     // function body
     return returnValue
 }
 
 4. Function declaration with parameters and a return value:
 
 func functionName(parameter1: Type1, parameter2: Type2, ...) -> ReturnType {
     // function body
     return returnValue
 }
 
 5. Function call with argument labels:
 
 functionName(parameter1: value1, parameter2: value2, ...)
 
 6. Function call without argument labels
 
 functionName(_ value1: Type1, _ value2: Type2, ...)
 
 7. Function call with default parameter values:
 
 func functionName(parameter1: Type1 = defaultValue1, parameter2: Type2 = defaultValue2, ...) {
     // function body
 }

 functionName(parameter1: value1) // parameter2 will use defaultValue2
 
 8. Function call with variadic parameters:
 
 func functionName(_ parameters: Type...) {
     // function body
 }

 functionName(value1, value2, value3, ...)
 
 A variadic parameter is a parameter that can accept zero or more values of a specified type. In Swift, you can declare a variadic parameter by adding three dots ... after the parameter's type. Here's an example:
 
 func sum(numbers: Int...) -> Int {
     var total = 0
     for number in numbers {
         total += number
     }
     return total
 }

 let result = sum(numbers: 1, 2, 3, 4, 5)
 print(result) // Output: 15
 
 In this example, the sum function takes a variadic parameter numbers of type Int..., which means it can accept any number of Int values. The function then loops through all the values in the numbers array and adds them up to get the total sum. The function call passes five Int values to the numbers parameter, and the result is stored in a variable called result.
 
 
 9. Function declaration with inout parameters:
 
 func functionName(parameter1: inout Type1, parameter2: inout Type2, ...) {
     // function body
 }

 var value1 = 10
 var value2 = 20
 functionName(parameter1: &value1, parameter2: &value2)
 
 An inout parameter is a parameter that can be modified by the function and the changes will be reflected in the original variable outside the function. In Swift, you can declare an inout parameter by adding the inout keyword before the parameter's type. Here's an example:
 
 func swapValues(_ a: inout Int, _ b: inout Int) {
     let temp = a
     a = b
     b = temp
 }

 var x = 10
 var y = 20
 swapValues(&x, &y)
 print("x = \(x), y = \(y)") // Output: x = 20, y = 10
 
 In this example, the swapValues function takes two inout parameters a and b of type Int. The function then swaps the values of a and b using a temporary variable temp. The function call passes the addresses of x and y to the a and b parameters using the & operator, which allows the function to modify the original variables x and y. The output of this code will be x = 20, y = 10, which shows that the values of x and y have been swapped.
*/

// Function declaration with no parameters and no return value:
func sayHello() {
    print("Hello!")
}

sayHello() // Output: Hello!

// Function declaration with parameters and no return value:
func greet(name: String) {
    print("Hello, \(name)!")
}

greet(name: "John") // Output: Hello, John!

// Function declaration with no parameters and a return value:
func getPi() -> Double {
    return 3.14159
}

let pi = getPi()
print(pi) // Output: 3.14159

// Function declaration with parameters and a return value:
func sum(a: Int, b: Int) -> Int {
    return a + b
}

let result = sum(a: 10, b: 20)
print(result) // Output: 30

// Function call with argument labels:
func greet(firstName: String, lastName: String) {
    print("Hello, \(firstName) \(lastName)!")
}

greet(firstName: "John", lastName: "Doe")

// Function call without argument labels:
func greet(_ name: String) {
    print("Hello, \(name)!")
}

greet("John") // Output: Hello, John!

// Function call with default parameter values:
func greetHello(name: String = "World") {
    print("Hello, \(name)!")
}

greetHello() // Output: Hello, World!
greetHello(name: "John") // Output: Hello, John!

// Function call with variadic parameters:
func sum(numbers: Int...) -> Int {
    var total = 0
    for number in numbers {
        total += number
    }
    return total
}

let sumResult = sum(numbers: 1, 2, 3, 4, 5)
print(result) // Output: 15

// Function declaration with inout parameters:
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var x = 10
var y = 20
swapValues(&x, &y)
print("x = \(x), y = \(y)") // Output: x = 20, y = 10

// internal and external names
func greetPerson(person name: String) {
    print("Hello, \(name)!")
}

greetPerson(person: "John") // Output: Hello, John!
