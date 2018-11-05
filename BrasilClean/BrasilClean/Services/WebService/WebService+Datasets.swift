//
//  WebService+Datasets.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON

extension Webservice {
    
    enum AuthRouter: AppfyGenericRouterEnum {
        
        case datasetsList
        
        var method: HTTPMethod {
            switch self {
            case .datasetsList:
                return .get
            }
        }
        
        var path: String {
            switch self {
            case .datasetsList:
                return "datasets"
            }
        }
        
        var parameters: Parameters? {
            switch self {
            case .datasetsList:
                return nil
            }
        }
        
        var body: Parameters? {
            switch self {
            case .datasetsList:
                return nil
            }
        }
        
    }
}

extension Webservice {
    
    enum GetDatasetsList { }
    
}

extension Webservice.GetDatasetsList {
    
    static func getDatasetsList() -> Promise<[result]> {
        return Promise.init { seal in
            
            let request = Webservice.AuthRouter.datasetsList
            
            Webservice.request(request, completion: { (response) in
                guard let statusCode = response.response?.statusCode else {
                    let error = NSError(domain: "Dataset", code: -1, userInfo: [NSLocalizedDescriptionKey: "Erro ao obter status da resposta com o servidor"])
                    seal.reject(error)
                    return
                }
                
                switch statusCode {
                case 200, 201:
                    do {
                        let parsedResult = try
                            CodableParser<Dataset>.parse(dict: response.result.value)
                        
                        seal.fulfill(parsedResult.results)
                    }
                    catch let error {
                        seal.reject(error)
                    }
                case 400:
                    let json = JSON(response.result.value ?? [:])
                    let errors = json.dictionary?.compactMap({ (key, value) -> NSError? in
                        let message = value.arrayValue.map({ $0.stringValue }).joined(separator: ", ")
                        return NSError(domain: "Dataset", code: -1, userInfo: [NSLocalizedDescriptionKey: "\(key.capitalized): \(message)"])
                    })
                    seal.reject(errors?.first ?? NSError(domain: "", code: -1, userInfo: [:]))
                default:
                    let error = NSError(domain: "Dataset", code: -1, userInfo: [NSLocalizedDescriptionKey: response.error?.localizedDescription ?? ""])
                    seal.reject(error)
                }
            })
        }
    }
}

