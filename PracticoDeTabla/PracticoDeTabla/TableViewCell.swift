//
//  TableViewCell.swift
//  PracticoDeTabla
//
//  Created by SP07 on 8/4/16.
//  Copyright © 2016 SP07. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var labelNombre: UILabel!
    
    @IBOutlet var labelPrecio: UILabel!
    
    @IBOutlet var imagenCelda: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
