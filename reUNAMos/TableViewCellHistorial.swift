//
//  TableViewCellHistorial.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class TableViewCellHistorial: UITableViewCell {

    @IBOutlet var perdida: UILabel!
    @IBOutlet var ganancia: UILabel!
    @IBOutlet var fecha: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
