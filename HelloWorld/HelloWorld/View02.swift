//
//  View02.swift
//  HelloWorld
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct View02: View {
    
    @Binding var text:String
    @Binding var switchedView: Bool
    
    var body: some View {
//        Rectangle().fill(Color.blue)
        VStack {
            Text("Screen 02").font(.headline)
            //Text("name:\(message)")
            TextField("Enter feedback here", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {
                self.switchedView = false
            }, label: {
                Text("Send back")
            })
        }
    }
}

struct View02_Previews: PreviewProvider {
    static var previews: some View {
        View02(text: .constant(""), switchedView: .constant(false))
    }
}
