import UIKit

class Animal {
    var name: String = ""
    var description: String {
        return "This is \(self.name)"
    }

//    final func eat() {
    func eat() {
        print("Animal is eating...")
    }
}

class Monkey: Animal {
    var canClimb: Bool = true
    func climb() {
        print("I can climb")
    }
    
    override func eat() {
        super.eat()
        print("Monkey like bananas")
    }
    
    override var description: String {
        return "Monkey's name is \(super.description), climbable:\(self.canClimb)"
    }
}

let animal = Animal()
var myMonkey = Monkey()
myMonkey.name = "Jack"
myMonkey.eat()
myMonkey.description
