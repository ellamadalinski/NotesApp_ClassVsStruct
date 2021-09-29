//
//  BankAccount.swift
//  NotesApp_ClassVsStruct
//
//  Created by ELLA MADALINSKI on 9/29/21.
//

import Foundation

public class BankAccount{
    
    var name : String
    var balance : Double
    
    
    init(n : String, balance : Double) {
        name = n
        self.balance = balance //self = this in java
    }
    
    init() {
        name = "John Doe"
        balance = 0.0
    }
    
    
    
    
}



