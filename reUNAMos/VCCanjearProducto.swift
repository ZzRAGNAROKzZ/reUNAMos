//
//  VCCanjearProducto.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import AlamofireImage

class VCCanjearProducto: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet var tableview: UITableView!
    
    var descripcion:[String]=["","Boletos de Metro","Boletos de Futbol","Boletos Teatro"]
    var imagen:[UIImage]=[#imageLiteral(resourceName: "canjeable01"),#imageLiteral(resourceName: "canjeable01"),#imageLiteral(resourceName: "canjeable02"),#imageLiteral(resourceName: "canjeable03")]
    var dinero:[Int]=[0,20,30,50]
    let url = "http://testhack.localtunnel.me/catalog"

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request(url).responseJSON {(response) in
            if  response.result.value != nil{
                let jsonOk=JSON(response.result.value)
                print(jsonOk)
                //print("Hola")
                
                self.descripcion[0] = jsonOk[0]["description"].description
                
                self.dinero[0] =  Int(  jsonOk[0]["value"].description)!
                
                self.tableview.reloadData()
                
            }
        }
        
                
                
        // Do any additional setup after loading the view.
        self.tableview.delegate = self
        self.tableview.dataSource = self
        self.tableview.reloadData()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.imagen.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as!
        TableViewCellCanjear
        
        cell.descripcion.text = self.descripcion[indexPath.row]
        cell.imagen.image = self.imagen[indexPath.row]
        cell.dinero.text = String( self.dinero[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Productos"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Se agrego una alerta
        let alert=UIAlertController(title: "presionaste una celda", message: "seccion:\(indexPath.section) ,celda:\(indexPath.row)", preferredStyle: .alert)
        //Se creo el boton OK del alerta
        let okAction=UIAlertAction(title: "OK", style: .default) { (action) in
        }
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)

        
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
