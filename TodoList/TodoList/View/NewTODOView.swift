//
//  NewTODOView.swift
//  TodoList
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct NewTODOView: View {
    
    @State private var newTODO: String = ""
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Text("Todo: ")
                TextField("Enter TODO", text: $newTODO)
                    .padding()
            }
            
            Button(action: {
                self.addTODO()
            }) {
                Text("ADD")
            }
        }
    }
    
    func addTODO() {
        if !newTODO.isEmpty {
            presentationMode.wrappedValue.dismiss()
        }
    }
}
