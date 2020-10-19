import UIKit

protocol ExampleDelegate {
    func method1()
}

class ExampleClass {
    var delegate: ExampleDelegate?
    func reloadData() {
        print("running reload...")
        print("Do some logic...")
        delegate?.method1()
        print("Do other task in 3 secs")
    }
}

class ClsConformDelegate: ExampleDelegate {
    var aProperty: ExampleClass
    init(aProperty: ExampleClass) {
        self.aProperty = aProperty
        self.aProperty.delegate = self
        self.aProperty.reloadData()
    }
}

extension ClsConformDelegate {
    func method1() {
        print("ClsConformDelegate calls method1")
    }
}

let a = ClsConformDelegate(aProperty: ExampleClass())

protocol TextPresentable {
    var textualDesc: String {get}
}
class Animal: TextPresentable {
    var name: String
    init(name: String) {
        self.name = name
    }
}
extension Animal {
    var textualDesc: String {
        return "This is an animal"
    }
}


// Optional Protocol Requirement
@objc protocol ExampleProtocol {
    @objc optional func method3()
    @objc optional var prop3: Int { get }
}
class AnExampleClass: ExampleProtocol {
    
}
