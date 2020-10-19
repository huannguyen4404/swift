//
//  TODODetail.swift
//  TodoList
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct TODODetailView: View {
    
    @State var isCompleted = false
    
    var todo: TODOS
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Text(todo.todo)
            
            Spacer()
            
            VStack {
                Text("Completed")
                Button(action: {
                    self.rowPress()
                }) {
                    if self.isCompleted == true {
                        Image(systemName: "checkmark").imageScale(.medium)
                    } else {
                        Image(systemName: "xmark").imageScale(.medium)
                    }
                }.onAppear() {self.initButton()}
            }
        }
    }
    
    func initButton() {
        if todo.isCompleted == "true" {
            isCompleted = true
        } else {
            isCompleted = false
        }
    }
    
    func rowPress() {
        if isCompleted == true {
            self.isCompleted = false
        } else {
            self.isCompleted = true
        }
    }
}
