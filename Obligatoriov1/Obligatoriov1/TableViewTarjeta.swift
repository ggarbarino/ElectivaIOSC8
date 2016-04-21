//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewControllerTarjeta: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var cambio : Int = 1
    @IBOutlet var btnCambio: UIButton!
    @IBAction func btnTarjeta(sender: AnyObject) {
        if (cambio == 1){
        btnCambio.setImage(UIImage (named: "codigoqr"), forState: .Normal)
        cambio = 2
        }else{
            btnCambio.setImage(UIImage (named: "tarjeta_puntos_ds_y_wii"), forState: .Normal)
            cambio = 1
        }
    }

}
