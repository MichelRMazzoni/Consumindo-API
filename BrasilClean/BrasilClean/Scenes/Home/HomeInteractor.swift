//
//  HomeInteractor.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol HomeBusinessLogic {

}

protocol HomeDataStore {

}

class HomeInteractor: HomeBusinessLogic, HomeDataStore {

    // Var's
    var presenter: HomePresentationLogic?
//    let worker = HomeWorker(service: <serviceClass>())

}
