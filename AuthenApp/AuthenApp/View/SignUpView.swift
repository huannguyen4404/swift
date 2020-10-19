//
//  SignUpView.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    
    @EnvironmentObject var authState: AuthenticationState
    
    @State var authType = AuthType.login
    
    var body: some View {
        ZStack {
            VStack(spacing: 32) {
                Text("Authentication")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                
                if authState.isAuthenticating {
                    ProgressView()
                } else {
                    AuthenFormView(authType: $authType)
                }
            }.offset(y: UIScreen.main.bounds.width > 320 ? -75 : 0)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
