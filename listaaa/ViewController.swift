//
//  ViewController.swift
//  listaaa
//
//  Created by Alumno ULSA on 24/04/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculaController
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        celda.lblAno.text = peliculas[indexPath.row].año
        celda.lblDirector.text = peliculas[indexPath.row].director
    
        return celda
    }
    

    var peliculas : [Pelicula] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        peliculas.append(Pelicula(titulo: "Titanic", director: "James Cameron", año: "1996"))
        peliculas.append(Pelicula(titulo: "Mario Bros.", director: "Michael Jelenic", año: "2023"))
        peliculas.append(Pelicula(titulo: "Mario Bros 2.", director: "Michael Jelenic", año: "2023"))
    }
    
    


}

