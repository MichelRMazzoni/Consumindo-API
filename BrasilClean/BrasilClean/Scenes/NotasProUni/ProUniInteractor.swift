//
//  ProUniInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol ProUniBusinessLogic {
    func getNotasProUni(request: ProUniList.ProUniNotasList.Request)
}

protocol ProUniDataStore {
    var notasProUniList: [NotasProUniDetails] { get }
}

class ProUniInteractor: ProUniBusinessLogic, ProUniDataStore {

    // Var's
    var presenter: ProUniPresentationLogic?
    let worker = ProUniWorker()
    
    var notasProUniList = [NotasProUniDetails]()

    func getNotasProUni(request: ProUniList.ProUniNotasList.Request) {
        worker.getNotasProUni()
            .done { result in
                let response = ProUniList.ProUniNotasList.Response.Success(proUniNotasList: result)
                self.presenter?.successGetNotas(response: response)
        }
            .catch { (error) in
                let response = ProUniList.ProUniNotasList.Response.Failure(error: error)
                self.presenter?.failureGetNotas(response: response)
        }
    }
}
