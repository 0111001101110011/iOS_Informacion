//
//  EditarContactoController.swift
//  iOS_Informacion
//
//  Created by G.A.P.M (Gabriel Pereda) on 10/1/19.
//  Copyright © 2019 Ajha inc. All rights reserved.
//

import Foundation
import UIKit

class EditarContactoController : UIViewController {
    
    var contacto : Contacto?
    
    @IBOutlet weak var txtNombre: UITextField!

    @IBOutlet weak var txtTelefono: UITextField!
    
    
    override func viewDidLoad() {
        txtTelefono.text = contacto!.telefono
        txtNombre.text = contacto!.nombre
    }


    @IBAction func doTapGuardar(_ sender: Any) {
    }
}
