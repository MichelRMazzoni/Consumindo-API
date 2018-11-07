//
//  SalariosMagistradosInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol SalariosMagistradosBusinessLogic {
    func getSalariosList(request: SalariosMagistradosList.Salarioslist.Request)
}

protocol SalariosMagistradosDataStore {
    var salariosList: [SalariosDetails] { get }
}

class SalariosMagistradosInteractor: SalariosMagistradosBusinessLogic, SalariosMagistradosDataStore {

    // Var's
    var presenter: SalariosMagistradosPresentationLogic?
    let worker = SalariosMagistradosWorker()
    
    var salariosList = [SalariosDetails]()
    
    func getSalariosList(request: SalariosMagistradosList.Salarioslist.Request) {
        worker.getSalariosMagistrados()
            .done { result in
                self.salariosList = result
                let response = SalariosMagistradosList.Salarioslist.Response.Success(salariosList: result)
                self.presenter?.successGetSalariosList(response: response)
        }
            .catch { (error) in
                let response = SalariosMagistradosList.Salarioslist.Response.Failure(error: error)
                self.presenter?.failureGetSalariosList(response: response)
        }
    }

}
