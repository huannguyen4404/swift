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
    @State var password2: String = ""
    @State var isShowPw: Bool = false
    
    
    @Binding var authType: AuthType
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Email", text: $email)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
            
            if isShowPw {
                TextField("Pasword", text: $password)
                    .textContentType(.password)
                    .autocapitalization(.none)
            } else {
                SecureField("Password", text: $password)
            }
            
            if authType == .signup {
                if isShowPw {
                    TextField("Pasword", text: $password2)
                        .textContentType(.password)
                        .autocapitalization(.none)
                } else {
                    SecureField("Password", text: $password2)
                }
            }
            
            Toggle("Show Password", isOn: $isShowPw)
            
            Button(action: emailAuthenticationPress) {
                Text(authType.text).font(.callout)
            }.disabled(email.count == 0 || password.count == 0)
            
            Button(action: footerBtnPress) {
                Text(authType.footerText)
                    .font(.callout)
            }
            
        }
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .frame(width: 300)
    }
    
    private func emailAuthenticationPress() {
        switch authType {
        case .login:
            authState.login(with: email, password: password)
        case .signup:
            authState.signUp(email: email, password: password, password2: password2)
        }
        
    }
    
    private func footerBtnPress() {
        clearFormFields()
        authType = authType == .signup ? .login : .signup
    }
    
    private func clearFormFields() {
        email = ""
        password = ""
        password2 = ""
        isShowPw = false
    }
}

//struct AuthenFormView_Previews: PreviewProvider {
//    static var previews: some View {
//        AuthenFormView()
//    }
//}
