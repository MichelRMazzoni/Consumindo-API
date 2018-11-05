//
//  DatasetsModels.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

enum Datasets {

    enum DatasetList {
        struct Request {
            
        }
        
        struct Response {
            
            struct Success {
                let datasetList: [result]
            }
            
            struct Failure {
                let error: Error
            }
            
        }
        
        struct ViewModel {
            
            struct DatasetListDisplay {
                let name: String
                let description: String
            }
            
            struct Success {
                let items: [DatasetListDisplay]
            }
            
            struct Failure {
                let message: String
            }
            
        }
    }
    
}
