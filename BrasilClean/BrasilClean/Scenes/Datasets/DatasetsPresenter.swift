//
//  DatasetsPresenter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol DatasetsPresentationLogic {
    func successGetDatasets(response: Datasets.DatasetList.Response.Success)
    func failureGetDatasets(response: Datasets.DatasetList.Response.Failure)
}

class DatasetsPresenter: DatasetsPresentationLogic {

    // Var's
    weak var viewController: DatasetsDisplayLogic?
    
    func successGetDatasets(response: Datasets.DatasetList.Response.Success) {
        let datasets = response.datasetList.compactMap {
            Datasets.DatasetList.ViewModel.DatasetListDisplay(
                name: $0.name,
                description: $0.description,
                id: $0.id
            )
        }
        let vm = Datasets.DatasetList.ViewModel.Success(items: datasets)
        self.viewController?.successGetDatasets(response: vm)
    }
    
    func failureGetDatasets(response: Datasets.DatasetList.Response.Failure) {
        let vm = Datasets.DatasetList.ViewModel.Failure(message: response.error.localizedDescription)
        self.viewController?.failureGetDatasets(response: vm)
    }

}
