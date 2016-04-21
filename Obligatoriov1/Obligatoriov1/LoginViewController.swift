//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController  {
    

    let defaults = NSUserDefaults.standardUserDefaults()
    
    
    
    //@IBOutlet weak var emailInput: UITextField!
    
    @IBOutlet weak var emailInput: UITextField!
   // @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
  
  //  @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func login(sender: AnyObject) {
        
        var email = emailInput.text
        
        var password = passwordInput.text
        
        if email == "ucu@ucu.com" && password == "ucu2016"{
            
            defaults.setObject(email, forKey: "Email")
            
            defaults.setObject(password, forKey: "Password")
            
            self.dismissViewControllerAnimated(true, completion: nil)
            
        }else{
            
            let alert = UIAlertController(title: nil, message: "Wrong email and password", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    

    
    
    
    
}

