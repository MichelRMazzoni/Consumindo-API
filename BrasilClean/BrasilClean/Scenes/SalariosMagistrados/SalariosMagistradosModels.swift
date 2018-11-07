//
//  SalariosMagistradosModels.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

enum SalariosMagistradosList {

    enum Salarioslist {
        struct Request {
            
        }
        
        struct Response {
            
            struct Success {
                let salariosList: [SalariosDetails]
            }
            
            struct Failure {
                let error: Error
            }
            
        }
        
        struct ViewModel {
            
            struct SalariosDisplay {
                let nome: String
                let cargo: String
                let lotacao: String
                let diarias: String
                let indenizacoes: String
                let descontos: String
                let totalRendimentos: String
                let totalLiquido: String
            }
            
            struct Success {
                let items: [SalariosDisplay]
            }
            
            struct Failure {
                let message: String
            }
            
        }
    }
    
}
