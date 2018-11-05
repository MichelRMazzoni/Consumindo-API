//
//  Datasets.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation


struct Dataset: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [result]
}

struct result: Codable {
    var author_name: String
    var author_url: String
    var code_url: String
    var description: String
    var id: String
    var license_name: String
    var license_url: String
    var name: String
    var slug: String
    var source_name: String
    var source_url: String
}
