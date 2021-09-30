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
        var client = BankAccount.init(n: blah, balance: Double(cash)!) //creating an object of the BankAccount class
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

