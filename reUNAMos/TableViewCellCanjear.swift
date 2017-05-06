//
//  TableViewCellCanjear.swift
//  reUNAMos
//
//  Created by Guillermo Garcia Romero on 05/05/17.
//  Copyright © 2017 Guillermo Garcia Romero. All rights reserved.
//

import UIKit

class TableViewCellCanjear: UITableViewCell{
    
    @IBOutlet var imagen: UIImageView!

    @IBOutlet var descripcion: UILabel!
    @IBOutlet var dinero: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
