//
//  GastosDeputadosTableViewCell.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class GastosDeputadosTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblPartido: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    @IBOutlet weak var lblDescricaoGasto: UILabel!
    @IBOutlet weak var lblValorGasto: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
