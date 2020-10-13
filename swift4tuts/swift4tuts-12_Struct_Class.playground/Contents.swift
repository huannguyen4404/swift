import UIKit

struct Shape {
    var width:Float = 0.0
    var height = 0.0
}
//var myShape = Shape()
var myShape = Shape(width: 105, height: 30)
//myShape.width = 105
var shape2 = myShape
shape2.width = 350
print("myShape: width=\(myShape.width); height:\(myShape.height)")
print("myShape: width=\(shape2.width); height:\(shape2.height)")


class User {
    var name = ""
    var universityName: String?
    var myBookShape = Shape(width: 250, height: 79)
}
var user1 = User()
var user2 = user1
var user3 = User()

if (user2 === user1) {
    print("user2 is identical with user1")
}
if (user3 === user1) {
    print("user3 is identical with user1")
} else {
    print("user3 is located in another memory location")
}

print("myBook height=\(user1.myBookShape.height)")
print("myBook width=\(user1.myBookShape.width)")
