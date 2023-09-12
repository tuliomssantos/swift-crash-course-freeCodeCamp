import Foundation

// Closure with Parameters
let add: (Int, Int) -> Int = {
    (a: Int, b: Int) -> Int in
    a + b
}

let result = add(4, 3)
print(result)

// Closure as a Function Parameter
func operateOnNumbers(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let addition = operateOnNumbers(3, 2) { (a, b) in
    return a + b
}

print(addition)

// Capturing Values in a Closure
func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo()) // Output: 2
print(incrementByTwo()) // Output: 4

// Trailing Closures
// In Swift, if a closure is the last argument of a function, you can use a trailing closure syntax to make your code cleaner and more readable. Instead of writing the closure as an inline parameter, you can place it outside the function's parentheses. Trailing closures are especially useful when the closure's body is relatively long.

func performOperation(on numbers: Int, using closure: (Int) -> Int) -> Int {
    return closure(numbers)
}

// Here's an example WITHOUT trailing closure syntax:
let withoutTrailingSyntaxResult = performOperation(on: 5, using: { number in
    return number * 2
})

// And here's the same code using trailing closure syntax:
let trailingClosuresResult = performOperation(on: 5) { number in
    return number * 2
}

print(trailingClosuresResult) // Output: 10

// Escaping Closures
// In Swift, an "escaping closure" is a closure that is passed as an argument to a function but is allowed to outlive the function's execution. This means the closure can be stored and called later, even after the function that received it has already returned. Escaping closures are typically used in scenarios like asynchronous operations.

//When you mark a closure parameter in a function with @escaping, you're telling Swift that the closure may be stored and called after the function returns. Here's an example:
var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completion: @escaping () -> Void) {
    completionHandlers.append(completion)
}

someFunctionWithEscapingClosure {
    print("Closure has escaped.")
}

// At a later point in time, you can call the closures stored in the array
completionHandlers[0]() // Output: Closure has escaped.
