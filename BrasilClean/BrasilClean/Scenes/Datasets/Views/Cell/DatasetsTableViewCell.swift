//
//  DatasetsTableViewCell.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class DatasetsTableViewCell: UITableViewCell {

    @IBOutlet weak var lblSourceName: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
