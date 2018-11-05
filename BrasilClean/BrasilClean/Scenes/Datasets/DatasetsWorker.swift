//
//  DatasetsWorker.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import PromiseKit

class DatasetsWorker {
    func getDatasetsList() -> Promise<[result]> {
        return Webservice.GetDatasetsList.getDatasetsList()
    }
}
