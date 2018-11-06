//
//  GastosDiretosModels.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

enum GastosDiretosList {

    enum GastosList {
        struct Request {
            
        }
        
        struct Response {
            
            struct Success {
                let gastosList: [GastosDetails]
            }
            
            struct Failure {
                let error: Error
            }
            
        }
        
        struct ViewModel {
            
            struct GastosDisplay {
                let nameInstitute: String
                let nameAction: String
                let mounth: Int
                let year: Int
                let price: String
            }
            
            struct Success {
                let items: [GastosDisplay]
            }
            
            struct Failure {
                let message: String
            }
            
        }
    }
    
}
