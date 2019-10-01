//
//  ViewController.swift
//  iOS_Informacion
//
//  Created by G.A.P.M (Gabriel Pereda) on 10/1/19.
//  Copyright © 2019 Ajha inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var contactos : [Contacto] = [  ]

    override func viewDidLoad() {
        super.viewDidLoad()

        contactos.append(Contacto(nombre: "Nikkolai Belinski", telefono: "6971461890", direccion: "Arboledas #435", correo:"vodka@gmail.com", foto: "1"))
        
        contactos.append(Contacto(nombre: "Takeo Masaki", telefono: "6971441890", direccion: "Jiquilpan #435", correo:"katana@gmail.com", foto: "2"))
        
        contactos.append(Contacto(nombre: "Tank Dempsey", telefono: "6971469890", direccion: "Tabasco #435", correo:"machinegun@gmail.com", foto: "3"))
        
        contactos.append(Contacto(nombre: "Edward Richtofen", telefono: "6141461890", direccion: "Potam #435", correo:"blood@gmail.com", foto: "4"))
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as?
        CeldadContactoController
        
        celda?.imgContacto.image = UIImage(named : contactos[indexPath.row].foto!)
        
        celda?.lblNombre.text =
        contactos[indexPath.row].nombre
        
        celda?.lblTelefono.text =
        contactos[indexPath.row].telefono!
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEditar" {
            let destino = segue.destination as? EditarContactoController
            destino?.contacto = contactos[tvContactos]
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153
    }
    
    
}

