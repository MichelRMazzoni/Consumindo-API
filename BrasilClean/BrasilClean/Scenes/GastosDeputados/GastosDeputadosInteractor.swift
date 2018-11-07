//
//  GastosDeputadosInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol GastosDeputadosBusinessLogic {
    func getGastosDeputadosList(request: GastosDeputadosList.GastosList.Request)
}

protocol GastosDeputadosDataStore {
    var gastosDeputadosList: [GastosDeputadosDetails] { get }
}

class GastosDeputadosInteractor: GastosDeputadosBusinessLogic, GastosDeputadosDataStore {

    // Var's
    var presenter: GastosDeputadosPresentationLogic?
    let worker = GastosDeputadosWorker()
    
    var gastosDeputadosList = [GastosDeputadosDetails]()

    func getGastosDeputadosList(request: GastosDeputadosList.GastosList.Request) {
        worker.getGastosDeputados()
            .done { result in
                self.gastosDeputadosList = result
                let response = GastosDeputadosList.GastosList.Response.Success(gastosList: result)
                self.presenter?.successGetGastosDeputados(response: response)
        }
            .catch { (error) in
                let response = GastosDeputadosList.GastosList.Response.Failure(error: error)
                self.presenter?.failureGetGastosDeputados(response: response)
        }
    }
    
}
