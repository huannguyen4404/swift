//
//  TODOS.swift
//  TodoList
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct TODOS: Identifiable {
    let id: String
    
    let todo:String
    let isCompleted: String
    let key: String
    
    init(todo: String, isCompleted: String, key:String = "") {
        self.todo = todo
        self.isCompleted = isCompleted
        self.key = key
        self.id = key
    }
}
