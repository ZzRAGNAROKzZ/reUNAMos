//
//  VCPerfil.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit


class VCPerfil: UIViewController {
    
    var usuario = ""
    var correo = ""
    var dinero = 100

    @IBOutlet var lb_usuario: UILabel!
    @IBOutlet var lb_correo: UILabel!
    @IBOutlet var lb_dinero: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_correo.text = correo
        lb_usuario.text = usuario
        lb_dinero.text = String("\u{1F331} \(dinero) ")
        //lb_correo.textColor = UIColor()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
