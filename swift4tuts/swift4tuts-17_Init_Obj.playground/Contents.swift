import UIKit

//initializer without params
/*
struct Point {
    var x, y: Double
    init() {
        x = 35
        y = 75
    }
}
*/
struct Point {
    var x = 30.0
    var y = 25.5
}

var p = Point()
print("Point x=\(p.x), y=\(p.y)")


/*
struct Energy {
    var calories: Float
    init(fromCalories calories: Float) {
        self.calories = calories
    }
    init(fromJoules joules: Float) {
        self.calories = 0.000239006 * joules
    }
    // initializer without Agrs Labels
    init(_ joules: Float) {
        self.calories = 0.000239006 * joules
    }
}
let energy1 = Energy(fromCalories: 110)
let energy2 = Energy(fromJoules: 20000.0)
let energy3 = Energy(11000)
*/


class Customer {
    var name: String
    var age: Int? // Optional property types
    init(name: String) {
        self.name = name
    }
    func description() {
        print(self.name)
    }
}
let customer = Customer(name: "Henry")
customer.description()


class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "N/A")
    }
}
class Employee: Person {
    var staffNo: String
    init(name: String, staffNo: String) {
        self.staffNo = staffNo
        super.init(name: name)
    }
    
    convenience override init(name: String) {
        self.init(name: name, staffNo: "1111")
//        self.super()  // Failed. Can not call super
    }
}


//Fallable initializer <- int() return nil
enum Sex {
    case male, female, other
    init?(sexCharacter: Character) {
        switch sexCharacter {
        case "M":
            self = .male
        case "F":
            self = .female
        case "O":
            self = .other
        default:
            return nil
        }
    }
}
let sexCharacter = Sex(sexCharacter: "M")
let sexCharacter2 = Sex(sexCharacter: "A")


// Raw value
enum Rank: String {
    case bad = "bad", medium = "medium", good = "good", excellent = "excellent"
}
let rank1 = Rank(rawValue: "excellent")
let rank2 = Rank(rawValue: "any")


// with closure
class MainView: UIView {
    var leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Sidebar Label"
        return label
    }()
}
let mainView = MainView()
mainView.leftLabel.text
