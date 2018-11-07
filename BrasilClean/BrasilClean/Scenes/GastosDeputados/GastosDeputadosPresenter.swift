//
//  GastosDeputadosPresenter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol GastosDeputadosPresentationLogic {
    func successGetGastosDeputados(response: GastosDeputadosList.GastosList.Response.Success)
    func failureGetGastosDeputados(response: GastosDeputadosList.GastosList.Response.Failure)
}

class GastosDeputadosPresenter: GastosDeputadosPresentationLogic {

    // Var's
    weak var viewController: GastosDeputadosDisplayLogic?
    
    func successGetGastosDeputados(response: GastosDeputadosList.GastosList.Response.Success) {
        let gastosDeputados = response.gastosList.compactMap {
            GastosDeputadosList.GastosList.ViewModel.GastosDeputadosDisplay (
                nome: $0.txnomeparlamentar ?? "Vazio",
                partido: $0.sgpartido ?? "Vazio",
                estado: $0.sguf ?? "Vazio",
                tipoGasto: $0.txtdescricao ?? "Vazio",
                valorGasto: $0.vlrliquido ?? "Vazio"
            )
        }
        
        let vm = GastosDeputadosList.GastosList.ViewModel.Success(items: gastosDeputados)
        self.viewController?.successGetGastosDeputados(response: vm)
    }
    
    func failureGetGastosDeputados(response: GastosDeputadosList.GastosList.Response.Failure) {
        
        let vm = GastosDeputadosList.GastosList.ViewModel.Failure(message: response.error.localizedDescription)
        self.viewController?.failureGetGastosDeputados(response: vm)
    }
}
