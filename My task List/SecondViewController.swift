//
//  SecondViewController.swift
//  My task List
//
//  Created by Apple on 12/06/15.
//  Copyright (c) 2015 mcanche. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //events  
    @IBAction func btnAddTask(sender : UIButton){
        if (txtTask.text == ""){
            //Task Title is blank, do not add a record
        } else {
            //add record
            taskMgr.addTask(txtTask.text, desc: txtDesc.text)
            
            //dismiss keyboard and reset fields
            
            self.view.endEditing(true)
            txtTask.text = nil
            txtDesc.text = nil
            
        }
    }

    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)

    }
    
 // override func touchesBegan(touches: NSSet!, withEvent event: UIEvent!) {
  //  self.view.endEditing(true)
  //}
    

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder(); 
        return true
    }
    

}

