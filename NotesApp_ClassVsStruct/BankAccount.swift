//
//  BankAccount.swift
//  NotesApp_ClassVsStruct
//
//  Created by ELLA MADALINSKI on 9/29/21.
//

import Foundation

enum AccountType {
    case checking, savings, mutualFund
}




protocol Randomness {
    func randomCash()-> Double
}




public class BankAccount: Pig, Randomness{
    func randomCash() -> Double {
        return Double.random(in: 0...100)
    }
    
    
    var name : String
    var balance : Double
    static var rate = 0.025
    var type : AccountType
    
    
    init(n : String, balance : Double, inType : AccountType) {
        name = n
        self.balance = balance //self = this in java
        type = inType
    }
    
    init() {
        name = "John Doe"
        balance = 0.0
        //type = AccountType.checking OR
        type = .checking //already knows its an AccountType
    }
    
    func toString()->String{
        return "\(name) : $\(balance)\n"
    }
    
    func calcInterest()->Double{
        let interest = balance*BankAccount.rate
        balance = balance+interest
        return interest
    }
    
    func changeType(t: AccountType){
        type = t
    }
    
    func bonus(){
        switch type {
        case .checking:
            balance += 5
        case .savings:
            balance += 10
        case .mutualFund:
            balance += 20
        default:
            balance += 0
        }
    }

}


public class Pig{
    func hi(r: Randomness){
        r.randomCash()
    }
}
