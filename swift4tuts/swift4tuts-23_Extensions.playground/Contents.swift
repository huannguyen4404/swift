import UIKit

extension Double {
    var meter: Double {
        return self
    }
    var kilometer: Double {
        return self * 1000
    }
    var centimeter: Double {
        return self / 100.0
    }
    var milimeter: Double {
        return self / 1000
    }
}

let aDistance = 42.0.kilometer + 192.0.meter + 12345.0.centimeter + 234567.0.milimeter


// Extend initializers
struct Point {
    var x: Double
    var y: Double
}
extension Point {
    init(xVal: Double, yVal: Double) {
        self.x = xVal
        self.y = yVal
    }
}
let myPoint = Point(x: 25.6, y: 23.7)
print("myPoint: \(myPoint)")


// Extend a static method
extension UIColor {
    static func rgba(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat) -> UIColor {
        return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
    }
}
//let myColor = UIColor.rgba(red: 250, green: 128, blue: 144, alpha: 1)
let myColor = UIColor.rgba(250, 128, 144, 1)
print("myColor = \(myColor)")


struct Rectangle {
    var width, height: Double
}
extension Rectangle {
    func calcArea() -> Double {
        return self.width * self.height
    }
}
let rect = Rectangle(width: 100.0, height: 200.0)
rect.calcArea()


// Extend mutating instance method
extension Double {
    mutating func square() {
        self = self * self
    }
}
var aDouble = 123.6
aDouble.square()
