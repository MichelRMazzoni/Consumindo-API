//
//  GastosDeputadosViewController+DisplayLogic.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol GastosDeputadosDisplayLogic: class {
    func successGetGastosDeputados(response: GastosDeputadosList.GastosList.ViewModel.Success)
    func failureGetGastosDeputados(response: GastosDeputadosList.GastosList.ViewModel.Failure)
}

extension GastosDeputadosViewController: GastosDeputadosDisplayLogic {
    
    func successGetGastosDeputados(response: GastosDeputadosList.GastosList.ViewModel.Success) {
        gastosDeputados = response.items
        tableView.reloadData()
        SVProgressHUD.dismiss()
    }
    
    func failureGetGastosDeputados(response: GastosDeputadosList.GastosList.ViewModel.Failure) {
        let alert = UIAlertController(title: "Brasil Clean", message: "Houve um erro ao efetuar o download dos gastos, verifique sua conexão com a internet", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        SVProgressHUD.dismiss()
    }
}
