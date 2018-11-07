//
//  ProUniRouter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

@objc protocol ProUniRoutingLogic {

}

protocol ProUniDataPassing {
    var dataStore: ProUniDataStore? { get }
}

class ProUniRouter: NSObject, ProUniRoutingLogic, ProUniDataPassing {

    // Var's
    weak var viewController: ProUniViewController?
    var dataStore: ProUniDataStore?

}
