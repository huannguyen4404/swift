//
//  ContentView.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/18/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var authState: AuthenticationState
    
    var body: some View {
        Group {
            if authState.loggedInUser != nil {
                HomeView()
            } else {
                SignUpView(authType: .signup)
            }
        }
        .animation(.easeOut)
        .transition(.move(edge: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
