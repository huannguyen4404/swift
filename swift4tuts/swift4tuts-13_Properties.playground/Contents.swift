import UIKit

struct Patient {
    var name: String
    let DOB: Int
}
var patient1 = Patient(name: "Alex", DOB: 1992)
patient1.name = "Andes"
//patient1.DOB = 1993 // Can not

class MovieManager {
    lazy var getOneMovieName:String = {
       print("do heavy task...")
        return "Loaded map"
    }()
}
let movieMgr = MovieManager()
print("Get 1 movie: \(movieMgr.getOneMovieName)")
movieMgr

struct Calculation {
    var x: Double
    var squaredX: Double {
        get {
            return pow(x, 2)
        }
        set {
            print("new value=\(newValue)")
            x = sqrt(newValue)
        }
    }
    var cubeX: Double {
        return x * x * x
    }
    var step:Int = 0 {
        willSet(newStep) {
            print("Before set value: \(step)")
        }
        didSet {
            print("After set value: \(step), old value:\(oldValue)")
        }
    }
}
var calculation = Calculation(x: 10)
print("squared= \(calculation.squaredX)")
calculation.squaredX = 256
print("now, x=\(calculation.x)")
calculation.cubeX
//calculation.cubeX = 1000 // Read-only
calculation.step = 123

class Computaion {
    static var title = "This is calc class"
    static let pi:Float = 3.14
    class var squaredPi: Float {
        return pi * pi
    }
}
print("title=\(Computaion.title)")
Computaion.pi
Computaion.squaredPi
