//
//  GastosDiretosViewController+DisplayLogic.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol GastosDiretosDisplayLogic: class {
    func successGetGastosList(response: GastosDiretosList.GastosList.ViewModel.Success)
    func failureGetGastosList(response: GastosDiretosList.GastosList.ViewModel.Failure)
}

extension GastosDiretosViewController: GastosDiretosDisplayLogic {
    
    func successGetGastosList(response: GastosDiretosList.GastosList.ViewModel.Success) {
        gastosList = response.items
        tableView.reloadData()
        SVProgressHUD.dismiss()
    }
    
    func failureGetGastosList(response: GastosDiretosList.GastosList.ViewModel.Failure) {
        let alert = UIAlertController(title: "Brasil Clean", message: "Houve um erro ao efetuar o download dos gastos, verifique sua conexão com a internet", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert,animated: true, completion: nil)
        SVProgressHUD.dismiss()
    }
}
