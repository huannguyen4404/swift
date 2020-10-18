//
//  AuthenFormView.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/18/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct AuthenFormView: View {
    
    @EnvironmentObject var authState: AuthenticationState
    @State var email: String = ""
    @State var password: String = ""
    @State var showPw: Bool = false
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            if showPw {
                TextField("Pasword", text: $password)
                .textContentType(.password)
                .autocapitalization(.none)
            } else {
                SecureField("Password", text: $password)
            }
            
            Toggle("Show Password", isOn: $showPw)
            
            Button(action: emailAuthenticationPress) {
                Text("Login").font(.callout)
            }.disabled(email.count == 0 || password.count == 0)
        }
    .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 300)
    }
    
    private func emailAuthenticationPress() {
        authState.login(with: email, password: password)
    }
}

//struct AuthenFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        AuthenFormView()
//    }
//}
