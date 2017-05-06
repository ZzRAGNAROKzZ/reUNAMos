//
//  VCRegistrarUsuario.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class VCRegistrarUsuario: UIViewController {
    @IBOutlet var tf_usuario: UITextField!
    @IBOutlet var tf_contraseña: UITextField!
    @IBOutlet var tf_contraseña2: UITextField!
    @IBOutlet var tf_correo: UITextField!

    @IBAction func btn_registrar(_ sender: Any) {
        if !(tf_usuario.text?.isEmpty)! &&
            !(tf_contraseña.text?.isEmpty)! &&
            !(tf_contraseña2.text?.isEmpty)! &&
            !(tf_correo.text?.isEmpty)!{
            
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
            let correo = tf_correo.text
            
            let controller = segue.destination as! VCPerfil
            
            controller.correo = correo!
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
