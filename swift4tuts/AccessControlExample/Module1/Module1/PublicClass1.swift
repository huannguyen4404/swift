//
//  PublicClass1.swift
//  Module1
//
//  Created by Revu Corp on 10/14/20.
//  Copyright © 2020 Henry. All rights reserved.
//

import Foundation
public class PublicClass1 {
    func abc() {
        // internal class only access within Module
        let internalClass1 = InternalClass1()
    }
    public func publicMethod() {
        
    }
    internal func internalMethod() {
        
    }
    private func privateMethod() {
        
    }
    fileprivate func fileprivateMethod() {
        
    }
}

internal class subClass1: PublicClass1 {
    override internal func publicMethod() {
        super.publicMethod()
    }
    
    override internal func internalMethod() {
        super.internalMethod()
    }
    
    override internal func fileprivateMethod() {
        super.fileprivateMethod()
    }
}
