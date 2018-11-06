//
//  DatasetsRouter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

@objc protocol DatasetsRoutingLogic {

}

protocol DatasetsDataPassing {
    var dataStore: DatasetsDataStore? { get }
}

class DatasetsRouter: NSObject, DatasetsRoutingLogic, DatasetsDataPassing {

    // Var's
    weak var viewController: DatasetsViewController?
    var dataStore: DatasetsDataStore?
}
