import UIKit

func sum2Nums(a: Int, b: Int) -> Int {
    //    let c = a + b
    return a + b
}
print("Sum 2 + 4 is: \(sum2Nums(a: 2, b: 4))")

func sayGreeting() {
    print("Welcome Henry come to World of Swift")
}
//sayGreeting()

func calcSumAndMultiply(a: Double, b: Double) -> (sum: Double, multiply: Double)? {
    return (a+b, a*b)
}
//print(calcSumAndMultiply(a: 2, b: 3))
if let result = calcSumAndMultiply(a: 12, b: 31) {
    print("result \(result)")
} else {
    print("result is nil")
}

func multiply2Nums(_ a: Float, _ b: Float) -> Float {
    return a*b;
}
//print("Multiply without param names: \(multiply2Nums(60, 0.5))")

func getRectArea(width: Double, height: Double = 10) -> Double {
    return width * height
}
//print("Area of Rect: \(getRectArea(width: 10.0, height: 20.5))")
//print("Area of Rect: \(getRectArea(width: 10.0))")

func sumMultipleNums(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total
}
//print("Total nums = \(sumMultipleNums(1, 3, 5, 7, 9))")
var myStr = "I am Henry"
print("str before: \(myStr)")
func inoutFunction(_ a: inout String) {
    a = "I am Iron man"
}
inoutFunction(&myStr)
print("str after: \(myStr)")

func showGreeting() {
    func sayHello() {
        print("Hello, I am Henry.")
    }
    func showDetail() {
        print("From Zero to Swift Developer")
    }
    sayHello()
    showDetail()
}
showGreeting()
