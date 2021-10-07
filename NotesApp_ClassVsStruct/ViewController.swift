//
//  ViewController.swift
//  NotesApp_ClassVsStruct
//
//  Created by ELLA MADALINSKI on 9/29/21.
//

import UIKit

class ViewController: UIViewController {
    
    var clients : [BankAccount] = []
    
    
    @IBOutlet weak var nameTextFieldOutlet: UITextField!
    @IBOutlet weak var balanceTextFieldOutlet: UITextField!
    @IBOutlet weak var reportTextViewOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        var blah = nameTextFieldOutlet.text!
        var cash = balanceTextFieldOutlet.text!
        var client = BankAccount.init(n: blah, balance: Double(cash)!, inType: .savings) //creating an object of the BankAccount class
        client.changeType(t: .mutualFund)
        var b = Pig()
        b.hi(r: client)
        
        //BankAccount(n: <#T##String#>, balance: <#T##Double#>) //don't NEED .init
        //building from struct
        //var client = BankAccount2(name: "Bill", balance: 25.23) //don't need initalizer in the struct, automatically makes one with variables in class
        clients.append(client)
        
        reportTextViewOutlet.text += "\(client.name) : $\(client.balance)\n"
        
    }
    
    func report(){
        reportTextViewOutlet.text = ""
        for c in clients{
            reportTextViewOutlet.text += c.toString()
        }
    }
    
    
    @IBAction func calcInterestButtonAction(_ sender: UIButton) {
        
        reportTextViewOutlet.text = ""
        
        for c in clients{
            c.calcInterest()
            
        }
        
        report()
        
    }
    
        
}
    

