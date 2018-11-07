//
//  ProUniModels.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

enum ProUniList {

    enum ProUniNotasList{
        struct Request {
            
        }
        
        struct Response {
            
            struct Success {
                let proUniNotasList: [NotasProUniDetails]
            }
            
            struct Failure {
                let error: Error
            }
            
        }
        
        struct ViewModel {
            
            struct NotasProUniDisplay {
                let nomeCurso: String
                let nomeUniversidade: String
                let cidade: String
                let estado: String
                let turno: String
                let mensalidade: String
                let grau: String
                let notaIntegralAmpla: String
                let notaIntegralCotas: String
                let notaParcialAmpla: String
            }
            
            struct Success {
                let items: [NotasProUniDisplay]
            }
            
            struct Failure {
                let message: String
            }
            
        }
    }
}
