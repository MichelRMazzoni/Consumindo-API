//
//  SalariosMagistradosViewController+DisplayLogic.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol SalariosMagistradosDisplayLogic: class {
    func successGetSalariosList(response: SalariosMagistradosList.Salarioslist.ViewModel.Success)
    func failureGetSalariosList(response: SalariosMagistradosList.Salarioslist.ViewModel.Failure)
}

extension SalariosMagistradosViewController: SalariosMagistradosDisplayLogic {
    
    func successGetSalariosList(response: SalariosMagistradosList.Salarioslist.ViewModel.Success) {
        salariosList = response.items
        tableView.reloadData()
        SVProgressHUD.dismiss()
    }
    
    func failureGetSalariosList(response: SalariosMagistradosList.Salarioslist.ViewModel.Failure) {
        let alert = UIAlertController(title: "Brasil Clean", message: "Houve um erro ao efetuar o download dos salarios, verifique sua conexão com a internet", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        SVProgressHUD.dismiss()
    }
    
}
