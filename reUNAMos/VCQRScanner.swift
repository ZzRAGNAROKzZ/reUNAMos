//
//  VCQRScanner.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 06/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit
import SwiftQRCode

class VCQRScanner: UIViewController {
    
    
    let scanner = QRCode()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scanner.prepareScan(view) { (stringValue) -> () in
            print(stringValue)
        }
        scanner.scanFrame = view.bounds
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
         scanner.startScan()
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
