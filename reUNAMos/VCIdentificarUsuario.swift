//
//  VCIdentificarUsuario.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit



class VCIdentificarUsuario: UIViewController {
    @IBOutlet var tf_usuario: UITextField!
    @IBOutlet var tf_contraseña: UITextField!
    let usuario = "reUNAMos"
    let contraseña = "1234"
    
    
    @IBAction func btn_entrar(_ sender: Any) {
        if usuario == tf_usuario.text &&
            contraseña == tf_contraseña.text {
            performSegue(withIdentifier: "SeguePerfil", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SeguePerfil" {
            let usuario = tf_usuario.text
            let correo = "reUNAMos@hotmail.com"
            
            let controller = segue.destination as! VCPerfil
            
            controller.correo = correo
            controller.usuario = usuario!
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
