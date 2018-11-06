//
//  GastosDiretosInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol GastosDiretosBusinessLogic {
    func getGastosDiretosList(request: GastosDiretosList.GastosList.Request)
}

protocol GastosDiretosDataStore {
    var gastosList: [GastosDetails] { get }
}

class GastosDiretosInteractor: GastosDiretosBusinessLogic, GastosDiretosDataStore {

    // Var's
    var presenter: GastosDiretosPresentationLogic?
    let worker = GastosDiretosWorker()
    
    var gastosList = [GastosDetails]()
    
    func getGastosDiretosList(request: GastosDiretosList.GastosList.Request) {
        worker.getGastosDiretos()
            .done { result in
                self.gastosList = result
                let response = GastosDiretosList.GastosList.Response.Success(gastosList: result)
                self.presenter?.successGetGastosList(response: response)
        }
            .catch { (error) in
                let response = GastosDiretosList.GastosList.Response.Failure(error: error)
                self.presenter?.failureGetGastosList(response: response)
                
        }
    }

}
