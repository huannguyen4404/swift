import UIKit
/*
class Customer {
    let name: String
    init(name: String) {
        self.name = name
        print("\(self.name) is being init")
    }
    deinit {
        print("\(self.name) is being deinit")
    }
    var house: House?
}
*/

/*
var customer1: Customer?
var customer2: Customer?
var customer3: Customer?
customer1 = Customer(name: "Henry")
customer2 = customer1
customer3 = customer1
customer1 = nil
customer2 = nil
customer3 = nil
*/

/*
class House {
    let address: String
    init(address: String) {
        self.address = address
        print("House at: \(address) is being init")
    }
    weak var owner: Customer?
    deinit {
        print("House at: \(address) is being deinit")
    }
}
var mrBean: Customer?
var hisHouse: House?
mrBean = Customer(name: "Mr Bin")
hisHouse = House(address: "151 NDC, District 3, HCM, VN")
mrBean!.house = hisHouse
hisHouse?.owner = mrBean
mrBean = nil
hisHouse = nil
*/

class User {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("User \(name) is being deinit")
    }
}

class CreditCard {
    let number: UInt64
    unowned var user: User
    init(number: UInt64, user: User) {
        self.number = number
        self.user = user
    }
    deinit {
        print("Card #\(number) is being deinit")
    }
}

var mrStark: User?
var creditCard: CreditCard?
mrStark = User(name: "Tony")
creditCard = CreditCard(number: 123_456_789, user: mrStark!)
mrStark!.card = creditCard
mrStark = nil
