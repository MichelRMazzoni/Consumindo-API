//
//  SalariosMagistradosRouter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

@objc protocol SalariosMagistradosRoutingLogic {

}

protocol SalariosMagistradosDataPassing {
    var dataStore: SalariosMagistradosDataStore? { get }
}

class SalariosMagistradosRouter: NSObject, SalariosMagistradosRoutingLogic, SalariosMagistradosDataPassing {

    // Var's
    weak var viewController: SalariosMagistradosViewController?
    var dataStore: SalariosMagistradosDataStore?

}
