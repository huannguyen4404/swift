//
//  AuthType.swift
//  AuthenApp
//
//  Created by Revu Corp on 10/19/20.
//  Copyright © 2020 iTraining. All rights reserved.
//

import Foundation

enum AuthType: String {
    case login, signup
    
    var text: String {
        rawValue.capitalized
    }
    
    var footerText: String {
        switch self {
        case .login:
            return "Not a member, signup"
        case .signup:
            return "Already account? Login"
        }
    }
}

