//
//  VCHistorial.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class VCHistorial: UIViewController,UITableViewDataSource,UITableViewDelegate {
    let fechas:[String]=["","15/Mayo/2017","12/Abril/2017","3/Febrero/2017"]
    let ganancias:[Int]=[0,30,40,50]
    let perdidas:[Int]=[0,20,70,40]
    
    @IBOutlet var tableview: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableview.delegate = self
        tableview.dataSource = self
        self.tableview.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ganancias.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CeldaHistorial", for: indexPath) as!
        TableViewCellHistorial
        if indexPath.row == 0 {
            cell.ganancia.text="Ganancias"
            cell.fecha.text="Fechas"
            cell.perdida.text="Perdidas"
        }else{
            cell.ganancia.text = String(self.ganancias[indexPath.row])
            cell.perdida.text = String (self.perdidas[indexPath.row])
            cell.fecha.text = self.fechas[indexPath.row]
        }
        
       
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Historial"
    }
    

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
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
