//
//  mostrarDatosController.swift
//  ejemplo1DiTema1
//
//  Created by Montacer El Fazazi on 19/10/2023.
//

import UIKit

class mostrarDatosController: UIViewController {

    @IBOutlet weak var lbEmail: UILabel!
    
    @IBOutlet weak var lbPassword: UILabel!
    
    var usuarioMostrar: Usuario!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbEmail.text = usuarioMostrar.email
        lbPassword.text = usuarioMostrar.Password

    }


}
