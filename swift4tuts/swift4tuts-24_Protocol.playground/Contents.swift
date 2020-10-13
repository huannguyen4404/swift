import UIKit

protocol DetailInformationProtocol {
    // property requirement
    var fullName: String { get }
    // method requirement
    func showDetail() -> String
}

class User: DetailInformationProtocol {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var fullName: String {
        return firstName + lastName
    }
    func showDetail() -> String {
        return "Firstname=\(firstName), lastName=\(lastName)"
    }
}
var mrBean = User(firstName: "Binz", lastName: "Mr.")


// example mutating
protocol TogglableProtocol {
    mutating func toggle()
}
enum Switcher: TogglableProtocol {
    case on, off
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var lightBtn = Switcher.off
lightBtn.toggle()
lightBtn.toggle()


protocol MyInitProtocol {
    init(name: String)
}
class Animal {
    
}
class Bird: Animal,MyInitProtocol {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
let aBird = Bird(name: "Seu dau do")
