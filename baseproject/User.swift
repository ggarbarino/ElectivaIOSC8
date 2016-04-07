//
//  User.swift
//  EjercicioClase8
//
//  Created by SP07 on 6/4/16.
//
//

import Foundation

class User {
    var nombre : String = ""
    var descripcion : String = ""
    var nombreImagen : String = ""

    init(nombre:String, descripcion: String, nombreImagen : String){
        self.nombre = nombre
        self.descripcion = descripcion
        self.nombreImagen = nombreImagen
    }
}
