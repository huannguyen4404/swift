import UIKit

class Point {
    var x:CGFloat = 0.0
    var y:CGFloat = 0.0
    var color: UIColor = UIColor.blue
    
    func moveTo(x: CGFloat, y: CGFloat, color: UIColor) {
        self.x = x
        self.y = y
        self.color = color
    }
    
    func toString() -> String {
        return "x=\(self.x), y=\(self.y), color=\(self.color.description)"
    }
    
    func moveAndCreateNewPoint(x: CGFloat, y: CGFloat, color: UIColor) -> Point {
        let newPoint = Point()
        newPoint.moveTo(x: x, y: y, color: color)
        return newPoint
    }
}

var myPoint = Point()
myPoint.moveTo(x: 10, y: 22, color: UIColor.red)
print(myPoint.toString())
var newPoint = myPoint.moveAndCreateNewPoint(x: 30, y: 15, color: UIColor.orange)
if (myPoint !== newPoint) {
    print("There are 2 different points.")
}


enum Compass {
    case east, west, south, north
    mutating func moveToNext() {
        switch self {
        case .east:
            self = .south
        case .west:
            self = .north
        case .north:
            self = .east
        case .south:
            self = .west
        }
    }
}

var compass1 = Compass.east
compass1.moveToNext()
print(compass1)
compass1.moveToNext()
print(compass1)


class Calculator {
    static let pi:Float = 3.14
    static func sum2Nums(a:Int, b:Int) -> Int {
        return a + b
    }
    class func circleArea(radius: Float) ->Float {
        return pi * radius * radius
    }
}
print("sum(5, 2) = \(Calculator.sum2Nums(a: 5, b: 2))")
print("Circl Area = \(Calculator.circleArea(radius: 5))")
