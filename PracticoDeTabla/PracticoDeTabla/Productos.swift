//
//  Productos.swift
//  PracticoDeTabla
//
//  Created by SP07 on 13/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import Foundation

class Productos {
    var precio : String = ""
    var imagen : String = ""
    var nombre : String = ""
    
    init(precio: String, imagen: String, nombre: String){
        
        self.precio = precio
        self.imagen = imagen
        self.nombre = nombre
    }
}