//
//  DatasetsInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol DatasetsBusinessLogic {
    func getDatasetsList(request: Datasets.DatasetList.Request)
}

protocol DatasetsDataStore {
    var dataset: [result] { get }
}

class DatasetsInteractor: DatasetsBusinessLogic, DatasetsDataStore {

    // Var's
    var presenter: DatasetsPresentationLogic?
    let worker = DatasetsWorker()
    
    var dataset = [result]()
    
    func getDatasetsList(request: Datasets.DatasetList.Request) {
        worker.getDatasetsList()
            .done { result in
                self.dataset = result
                let response = Datasets.DatasetList.Response.Success(datasetList: result)
                self.presenter?.successGetDatasets(response: response)
            }
            .catch { (error) in
                let response = Datasets.DatasetList.Response.Failure(error: error)
                self.presenter?.failureGetDatasets(response: response)
        }
    }
    

}
