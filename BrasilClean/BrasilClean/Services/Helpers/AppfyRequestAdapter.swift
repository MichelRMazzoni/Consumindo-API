//
//  AppfyRequestAdapter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation
import Alamofire

class AppfyRequestAdapter: RequestAdapter {
    
    let tokenType = "Bearer"
    
    func adapt(_ urlRequest: URLRequest) throws -> URLRequest {
        var urlRequest = urlRequest
        if let token = UserDefaults.standard.accessToken, !token.isEmpty {
            urlRequest.setValue(tokenType + " " + token, forHTTPHeaderField: "Authorization")
        }
        return urlRequest
    }
    
}
