//
//  AuthenticationState.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/18/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import AuthenticationServices
import FirebaseAuth

class AuthenticationState: NSObject, ObservableObject {
    
    static let shared = AuthenticationState()
    
    private let auth = Auth.auth()
    
    func login(with email: String, password: String) {
        handleSignInWith(email: email, password: password)
    }
    
    private func handleSignInWith(email: String, password: String) {
        auth.signIn(withEmail: email, password: password, completion: handleAuthResultCompletion)
    }
    
    private func handleAuthResultCompletion(auth: AuthDataResult?, error: Error?) {
        DispatchQueue.main.async {
            if let user = auth?.user {
                print("Loggedin user: \(user)")
            } else if let error = error {
                print("Login failed: \(error.localizedDescription)")
            }
        }
        
    }
}
