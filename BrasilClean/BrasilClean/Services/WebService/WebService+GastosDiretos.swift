//
//  WebService+GastosDiretos.swift
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
    
    enum GetGastosDiretos { }
    
}

extension Webservice.GetGastosDiretos {
    
    static func getDetails() -> Promise<[GastosDetails]> {
        return Promise.init { seal in
            
            
            let request = ""
            
            Alamofire.request(request, method: .get).responseJSON(completionHandler: { (response) in
                
                guard let statusCode = response.response?.statusCode else {
                    let error = NSError(domain: "GastosDiretos", code: -1, userInfo: [NSLocalizedDescriptionKey: "Erro ao obter status da resposta com o servidor"])
                    seal.reject(error)
                    return
                }
                
                switch statusCode {
                case 200, 201:
                    do {
                        let parsedResult = try
                            CodableParser<GastosDiretos>.parse(dict: response.result.value)
                        
                        seal.fulfill(parsedResult.results)
                    }
                    catch let error {
                        seal.reject(error)
                    }
                case 400:
                    let json = JSON(response.result.value ?? [:])
                    let errors = json.dictionary?.compactMap({ (key, value) -> NSError? in
                        let message = value.arrayValue.map({ $0.stringValue }).joined(separator: ", ")
                        return NSError(domain: "GastosDiretos", code: -1, userInfo: [NSLocalizedDescriptionKey: "\(key.capitalized): \(message)"])
                    })
                    seal.reject(errors?.first ?? NSError(domain: "", code: -1, userInfo: [:]))
                default:
                    let error = NSError(domain: "GastosDiretos", code: -1, userInfo: [NSLocalizedDescriptionKey: response.error?.localizedDescription ?? ""])
                    seal.reject(error)
                }
            })
        }
    }
}
