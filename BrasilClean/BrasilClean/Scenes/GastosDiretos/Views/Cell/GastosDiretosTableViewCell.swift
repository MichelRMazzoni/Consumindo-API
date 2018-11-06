//
//  GastosDiretosTableViewCell.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class GastosDiretosTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNameInstitute: UILabel!
    @IBOutlet weak var lblNameAction: UILabel!
    @IBOutlet weak var lblMounthYear: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
