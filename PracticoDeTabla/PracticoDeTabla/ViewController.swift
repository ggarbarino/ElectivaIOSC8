//
//  ViewController.swift
//  PracticoDeTabla
//
//  Created by SP07 on 8/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("identPrueba", sender: nil)
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
 
    @IBAction func btnAgregar(sender: AnyObject) {
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let data = son los datos que tengo en el array
        
        let dequeued = tableView.dequeueReusableCellWithIdentifier("CeldaPrueba", forIndexPath: indexPath) as! TableViewCell
        let cell = dequeued as TableViewCell
        cell.labelNombre.text = "Nombre de la Celda"
        cell.labelPrecio.text = "$ 124"
        cell.imagenCelda.image = UIImage(named: "img-profile-2")
       
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableViewPrueba.delegate =  self
        tableViewPrueba.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


   
    @IBOutlet var tableViewPrueba: UITableView!
    
    
}

