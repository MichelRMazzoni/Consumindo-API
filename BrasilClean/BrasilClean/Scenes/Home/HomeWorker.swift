//
//  HomeWorker.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol HomeWorkerLogic {

}

class HomeWorker {

    private let service: HomeWorkerLogic

    init(service: HomeWorkerLogic) {
        self.service = service
    }

}
