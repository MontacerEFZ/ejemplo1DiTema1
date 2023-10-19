//
//  ViewController.swift
//  ejemplo1DiTema1
//
//  Created by Montacer El Fazazi on 28/09/2023.
//

import UIKit
import Toast

class ViewController: UIViewController {
    @IBOutlet weak var lbResultado: UILabel!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    var contador: UInt!
    var listaUsuarios: [Usuario]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        contador = 0
        listaUsuarios = []
    }

    @IBAction func contarClick(_ sender: Any) {
        contador += 1
        lbResultado.text = "\(String (contador)) veces"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let email: String = txtEmail.text!
        let password: String = txtPassword.text!
        
        let usuario: Usuario = Usuario(email: email, Password: password)
        
        listaUsuarios.append(usuario)
        
        self.view.makeToast("EMAIL \(email), PASSWORD \(password)")
        
        if segue.identifier == "VER"{
            let destino = segue.destination as! mostrarDatosController
            destino.usuarioMostrar = usuario
        }
    }
}

