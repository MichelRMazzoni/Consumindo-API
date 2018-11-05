//
//  DatasetsViewController+DisplayLogic.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol DatasetsDisplayLogic: class {
    func successGetDatasets(response: Datasets.DatasetList.ViewModel.Success)
    func failureGetDatasets(response: Datasets.DatasetList.ViewModel.Failure)
}

extension DatasetsViewController: DatasetsDisplayLogic {
    
    
    func successGetDatasets(response: Datasets.DatasetList.ViewModel.Success) {
        datasetsList = response.items
        tableView.reloadData()
        SVProgressHUD.dismiss()
    }
    
    func failureGetDatasets(response: Datasets.DatasetList.ViewModel.Failure) {
        let alert = UIAlertController(title: "Brasil Clean", message: "Ocorreu um erro ao efetuar o download dos datasets, verifique sua conexão com a internet", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        SVProgressHUD.dismiss()
    }
}
