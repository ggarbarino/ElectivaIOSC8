//
//  ViewController.swift
//  Obligatoriov1
//
//  Created by SP07 on 14/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class ViewControllerProductos: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    
    
    let producto1 = Producto (descuento: "Descuento del 90%", nombre: "En cualquier Restoran", imagen: "35194")
    let producto2 = Producto (descuento: "Descuento del 40%", nombre: "En cualquier Local de Comida", imagen: "35194")
    let producto3 = Producto (descuento: "Descuento del 60%", nombre: "En Pizzas", imagen: "35194")
    var lstProductos: [Producto] = []
    
    
    

    @IBOutlet var tablaProductos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lstProductos.append(producto1)
        lstProductos.append(producto2)
        lstProductos.append(producto3)
        tablaProductos.delegate = self
        tablaProductos.dataSource = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lstProductos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let data = son los datos que tengo en el array
        
        let dequeued = tableView.dequeueReusableCellWithIdentifier("celdaProductos", forIndexPath: indexPath) as! TableViewCell
        let cell = dequeued as TableViewCell
        cell.labelNombre.text = lstProductos[indexPath.row].nombre
        cell.labelDescuento.text = lstProductos[indexPath.row].descuento
        cell.nombreImagen.image = UIImage(named: lstProductos[indexPath.row].imagen)
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("idVerCupon", sender: nil)
    }
  
}

