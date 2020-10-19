import UIKit

/*
func swap2Nums(_ a: inout Int, _ b: inout Int) {
    let tmp = a
    a = b
    b = tmp
}
var x = 11
var y = 22
swap2Nums(&x, &y)
print("x=\(x), y=\(y)")
*/


// T - placeholder type name
func swap2Vals<T>(_ a: inout T, _ b: inout T) {
    let tmp = a
    a = b
    b = tmp
}
var str1 = "Nguyen"
var str2 = "Henry"
print("\(str1) \(str2)")
swap2Vals(&str1, &str2)
print("\(str1) \(str2)")


// struct with Element or T
struct Stack<T> {
    var items = [T]()
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T? {
        return items.count > 0 ? items.removeLast() : nil
    }
}
/*
var intStack = Stack<Int>()
intStack.push(1)
intStack.push(3)
intStack.push(5)
print("integerStack=\(intStack)")
intStack.pop()
print("integerStack=\(intStack)")
*/

// Type Constraint
// Equatable
func findIndex<T: Equatable>(of valueToFind: T, in list: [T]) -> Int? {
    for (index, value) in list.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}
let intIndex = findIndex(of: 11, in: [11, 15, 19])
let strIndex = findIndex(of: "Jax", in: ["Henry", "Jax", "Lee"])
//print("str \(strIndex)")


// Associated Types
protocol Container {
    associatedtype T
    mutating func append(_ item: T)
    var count: Int { get }
}
struct IntStack: Container {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    // conformance
    typealias T = Int
    mutating func append(_ item: T) {
        self.push(item)
    }
    var count: Int {
        return items.count
        
    }
}
