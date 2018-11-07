//
//  GastosDeputadosModels.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

enum GastosDeputadosList {

    enum GastosList {
        struct Request {
            
        }
        
        struct Response {
            
            struct Success {
                let gastosList: [GastosDeputadosDetails]
            }
            
            struct Failure {
                let error: Error
            }
            
        }
        
        struct ViewModel {
            
            struct GastosDeputadosDisplay {
                let nome: String
                let partido: String
                let estado: String
                let tipoGasto: String
                let valorGasto: String
            }
            
            struct Success {
                let items: [GastosDeputadosDisplay]
            }
            
            struct Failure {
                let message: String
            }
            
        }
    }
}
