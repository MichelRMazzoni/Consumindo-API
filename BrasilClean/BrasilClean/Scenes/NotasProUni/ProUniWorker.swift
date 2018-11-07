//
//  ProUniWorker.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import PromiseKit

class ProUniWorker {
    func getNotasProUni() -> Promise<[NotasProUniDetails]> {
        return Webservice.GetNotasProUni.getNotasProUni()
    }
}
