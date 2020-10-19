//
//  HomeView.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var authState: AuthenticationState
    
    let url = URL(string: "https://webview.vn.revu.net/")!
    @State var isLoading:Bool = false
    @State var error: NSError?
    
    var body: some View {
        NavigationView {
            ZStack {
                WebView(url: url, isLoading: $isLoading, error: $error)
                    .opacity(!isLoading && error == nil ? 1 : 0)
                
                if self.isLoading {
                    ProgressView()
                } else if self.error != nil {
                    Text(error!.localizedDescription)
                }
            }
            .background(Color(UIColor.systemBackground))
            .navigationBarTitle("Authentication App", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: signoutPress, label: {
                Image(systemName: "person.circle")
                Text("Logout")
            }))
            .edgesIgnoringSafeArea(.vertical)
        }
    }
    
    private func signoutPress() {
        authState.signOut()
    }
}
