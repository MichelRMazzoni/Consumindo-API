//
//  SalariosTableViewCell.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class SalariosTableViewCell: UITableViewCell {


    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblCargo: UILabel!
    @IBOutlet weak var lblLotacao: UILabel!
    @IBOutlet weak var lblDiarias: UILabel!
    @IBOutlet weak var lblIndenizacoes: UILabel!
    @IBOutlet weak var lblDescontos: UILabel!
    @IBOutlet weak var lblTotalRendimentos: UILabel!
    @IBOutlet weak var lblTotalLiquido: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
