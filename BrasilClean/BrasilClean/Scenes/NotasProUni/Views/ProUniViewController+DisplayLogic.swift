//
//  ProUniViewController+DisplayLogic.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

protocol ProUniDisplayLogic: class {
    func successGetNotasProUni(response: ProUniList.ProUniNotasList.ViewModel.Success)
    func failureGetNotasProUni(response: ProUniList.ProUniNotasList.ViewModel.Failure)
}

extension ProUniViewController: ProUniDisplayLogic {
    
    func successGetNotasProUni(response: ProUniList.ProUniNotasList.ViewModel.Success) {
        notasProUni = response.items
        
        
        tableView.reloadData()
        SVProgressHUD.dismiss()
    }
    
    func failureGetNotasProUni(response: ProUniList.ProUniNotasList.ViewModel.Failure) {
        let alert = UIAlertController(title: "Brasil Clean", message: "Houve um erro ao efetuar o download das notas do ProUni, verifique sua conexão com a internet", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        SVProgressHUD.dismiss()
    }
}
