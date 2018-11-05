//
//  Datasets+TableView.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

extension DatasetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasetsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "datasetsCell", for: indexPath) as! DatasetsTableViewCell
        
        let item = datasetsList[indexPath.row]
        cell.lblSourceName.text = item.name
        cell.lblDescription.text = item.description
        
        return cell
    }
    
}
