import UIKit

/*
class User {
    var name: String
    var readingBook: Book?
    init(name: String) {
        self.name = name
    }
}
class Book {
    var totalPages = 1000
}

var myInfo = User(name: "Henry")
myInfo.readingBook = Book()
if let totalPage = myInfo.readingBook?.totalPages {
    print("My book has \(totalPage) page(s)")
} else {
    print("No book.")
}
*/

class Address {
    var building: String?
    var street: String?
    var city: String?
    
    func detailAddress() -> String? {
        if let building = building, let street = street, let city = city {
            return "\(building) \(street) \(city)"
        } else {
            return nil
        }
    }
}
let address = Address()
address.building = "Alpha Tower"
address.street = "NDC"
address.city = "HCM"

if let detailAddress = address.detailAddress() {
    print("ADD: \(detailAddress)")
} else {
    print("No address info.")
}

var topScores = [
    "Henry": [60, 70, 80],
    "Huan": [39, 79, 99]
]
topScores["Henry"]?[0] = 62
print(topScores)
