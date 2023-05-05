//
//  Pelicula.swift
//  listaaa
//
//  Created by Alumno ULSA on 24/04/23.
//

import Foundation

class Pelicula : Decodable {
    var nombre : String
    var director : String
    var ano : String
    
    init(titulo: String, director: String, año: String) {
        self.nombre = titulo
        self.director = director
        self.ano = año
    }
}
