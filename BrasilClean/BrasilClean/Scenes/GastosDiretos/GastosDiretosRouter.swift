//
//  GastosDiretosRouter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

@objc protocol GastosDiretosRoutingLogic {

}

protocol GastosDiretosDataPassing {
    var dataStore: GastosDiretosDataStore? { get }
}

class GastosDiretosRouter: NSObject, GastosDiretosRoutingLogic, GastosDiretosDataPassing {

    // Var's
    weak var viewController: GastosDiretosViewController?
    var dataStore: GastosDiretosDataStore?

}
