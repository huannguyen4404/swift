//
//  PublicSubClass1.swift
//  Module1
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import Foundation

internal class subClass11: PublicClass1 {
    override internal func publicMethod() {
        super.publicMethod()
    }
    
    override internal func internalMethod() {
        super.internalMethod()
    }
    
    // ERROR:
//    override internal func fileprivateMethod() {
//        super.fileprivateMethod()
//    }
}
