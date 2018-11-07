//
//  GastosDeputadosRouter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

@objc protocol GastosDeputadosRoutingLogic {

}

protocol GastosDeputadosDataPassing {
    var dataStore: GastosDeputadosDataStore? { get }
}

class GastosDeputadosRouter: NSObject, GastosDeputadosRoutingLogic, GastosDeputadosDataPassing {

    // Var's
    weak var viewController: GastosDeputadosViewController?
    var dataStore: GastosDeputadosDataStore?

}
