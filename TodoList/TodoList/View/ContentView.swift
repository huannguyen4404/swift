//
//  ContentView.swift
//  TodoList
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var todos: [TODOS] = [
        TODOS(todo: "Todo 1", isCompleted: "false", key: "1"),
        TODOS(todo: "Todo 2", isCompleted: "true", key: "2"),
        TODOS(todo: "Todo 3", isCompleted: "false", key: "3"),
        TODOS(todo: "Todo 4", isCompleted: "false", key: "4"),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: NewTODOView()) {
                    Text("Add TODO")
                }
                List(todos) { todo in
                    NavigationLink(destination: TODODetailView(todo: todo)) {
                        TODORowView(todo: todo)
                    }
                }
            }
            
            .navigationBarTitle("TODO List")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
