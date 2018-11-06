//
//  GastosDiretos+TableView.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

extension GastosDiretosViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return gastosList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "gastosDiretosCell", for: indexPath) as! GastosDiretosTableViewCell
        
        let item = gastosList[indexPath.row]
        cell.lblNameInstitute.text = item.nameInstitute
        cell.lblNameAction.text = item.nameAction
        cell.lblMounthYear.text = "\(item.mounth)/\(item.year)"
        cell.lblPrice.text = "R$\(item.price)".replacingOccurrences(of: ".", with: ",")
        
        return cell
    }
    
}
