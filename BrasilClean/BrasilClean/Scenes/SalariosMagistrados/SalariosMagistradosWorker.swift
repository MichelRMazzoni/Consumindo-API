//
//  SalariosMagistradosWorker.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol SalariosMagistradosWorkerLogic {

}

class SalariosMagistradosWorker {

    private let service: SalariosMagistradosWorkerLogic

    init(service: SalariosMagistradosWorkerLogic) {
        self.service = service
    }

}
