//
//  GastosDiretosPresenter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol GastosDiretosPresentationLogic {
    func successGetGastosList(response: GastosDiretosList.GastosList.Response.Success)
    func failureGetGastosList(response: GastosDiretosList.GastosList.Response.Failure)
}

class GastosDiretosPresenter: GastosDiretosPresentationLogic {

    // Var's
    weak var viewController: GastosDiretosDisplayLogic?
    
    func successGetGastosList(response: GastosDiretosList.GastosList.Response.Success) {
        let gastosDiretos = response.gastosList.compactMap {
            GastosDiretosList.GastosList.ViewModel.GastosDisplay(
                nameInstitute: $0.nome_orgao,
                nameAction: $0.nome_elemento_despesa,
                mounth: $0.mes,
                year: $0.ano,
                price: $0.valor
            )
        }
        
        let vm = GastosDiretosList.GastosList.ViewModel.Success(items: gastosDiretos)
        self.viewController?.successGetGastosList(response: vm)
    }
    
    func failureGetGastosList(response: GastosDiretosList.GastosList.Response.Failure) {
        let vm = GastosDiretosList.GastosList.ViewModel.Failure(message: response.error.localizedDescription)
        self.viewController?.failureGetGastosList(response: vm)
    }

}
