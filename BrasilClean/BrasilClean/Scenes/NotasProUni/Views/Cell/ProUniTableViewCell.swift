//
//  ProUniTableViewCell.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class ProUniTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNomeUniversidade: UILabel!
    @IBOutlet weak var lblCidade: UILabel!
    @IBOutlet weak var lblUF: UILabel!
    @IBOutlet weak var lblCurso: UILabel!
    @IBOutlet weak var lblTurno: UILabel!
    @IBOutlet weak var lblNivel: UILabel!
    @IBOutlet weak var lblMensalidade: UILabel!
    @IBOutlet weak var lblNotaIntegralAmpla: UILabel!
    @IBOutlet weak var lblNotaIntegralCota: UILabel!
    @IBOutlet weak var lblNotaParcialAmpla: UILabel!
    @IBOutlet weak var lblNotaParcialCota: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
