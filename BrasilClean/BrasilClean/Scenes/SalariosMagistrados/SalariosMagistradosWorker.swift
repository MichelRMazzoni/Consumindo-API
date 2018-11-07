//
//  SalariosMagistradosWorker.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import PromiseKit

class SalariosMagistradosWorker {
    func getSalariosMagistrados() -> Promise<[SalariosDetails]> {
        return Webservice.GetSalarioMagistrados.getSalarioMagistrados()
    }
}
