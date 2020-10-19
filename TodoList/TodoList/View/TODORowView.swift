//
//  TODORowView.swift
//  TodoList
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct TODORowView: View {
    var todo: TODOS
    
    var body: some View {
        HStack {
            Text(todo.todo)
            
            Spacer()
            
            if todo.isCompleted == "true" {
                Image(systemName: "checkmark").imageScale(.medium)
            } else {
                Image(systemName: "xmark").imageScale(.medium)
            }
        }
    }
}

//struct TODORowView_Previews: PreviewProvider {
//    static var previews: some View {
//        TODORowView()
//    }
//}
