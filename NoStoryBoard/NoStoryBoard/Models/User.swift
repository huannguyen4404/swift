//
//  User.swift
//  NoStoryBoard
//
//  Created by Revu Corp on 10/28/20.
//

import Foundation

final class User {
    var name: String
    var age: Int
    var gender: Bool
    var avatar: String
    
    init(name: String, age: Int, gender: Bool, avatar: String = "") {
        self.name = name
        self.age = age
        self.gender = gender
        self.avatar = avatar
    }
    
    func getShortDesc() -> String {
        return "\(gender ? "Male" : "Female") - \(age) years old"
    }
}

extension User {
    static func getDummyData() -> [User] {
        var users: [User] = []
        
        for i in 0...30 {
            let user = User(name: "User_\(i)", age: Int.random(in: 15...30), gender: Bool.random(), avatar: "avatar_\(i%10)")
            users.append(user)
        }
        
        return users
    }
}
