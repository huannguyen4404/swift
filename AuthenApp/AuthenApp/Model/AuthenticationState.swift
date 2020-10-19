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
    
    @Published var isAuthenticating = false
    @Published var loggedInUser: User?
    @Published var error: NSError?
    
    static let shared = AuthenticationState()
    
    private let auth = Auth.auth()
    
    override init() {
        loggedInUser = auth.currentUser
        super.init()
        
        auth.addStateDidChangeListener(authStateChange)
    }
    
    private func authStateChange(with auth: Auth, user: User?) {
        guard user != self.loggedInUser else { return }
        self.loggedInUser = user
    }
    
    func login(with email: String, password: String) {
        isAuthenticating = true
        error = nil
        handleSignInWith(email: email, password: password)
    }
    
    func signUp(email: String, password: String, password2: String) {
        guard password == password2 else {
            error = NSError(domain: "", code: 9000, userInfo: [NSLocalizedDescriptionKey: "Passwords is mismatched."])
            return
        }
        
        self.isAuthenticating = true
        self.error = nil
        
        auth.createUser(withEmail: email, password: password, completion: handleAuthResultCompletion)
    }
    
    func signOut() {
        try? auth.signOut()
    }
    
    private func handleSignInWith(email: String, password: String) {
        auth.signIn(withEmail: email, password: password, completion: handleAuthResultCompletion)
    }
    
    private func handleAuthResultCompletion(auth: AuthDataResult?, error: Error?) {
        DispatchQueue.main.async {
            self.isAuthenticating = false
            if let user = auth?.user {
                self.loggedInUser = user
                print("Loggedin user: \(user)")
            } else if let error = error {
                print("Login failed: \(error.localizedDescription)")
                self.error = error as NSError
            }
        }
        
    }
}
