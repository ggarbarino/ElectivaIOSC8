//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet weak var tarjeta: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var email = defaults.stringForKey("Email")
        
        var password = defaults.stringForKey("Password")
        
        
        
        if email == nil || password == nil{
            
            self.performSegueWithIdentifier("toLogin", sender: nil)
            
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBOutlet var btnCambio: UIButton!
    @IBAction func btnTarjeta(sender: AnyObject) {
   //     btnCambio.setImage(, forState: nil)
    }

}
