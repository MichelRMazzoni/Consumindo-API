//
//  ProUni.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation

struct NotasProUni: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [NotasProUniDetails]
}

struct NotasProUniDetails: Codable{
    var bolsa_integral_ampla: Int?
    var bolsa_integral_cotas: Int?
    var bolsa_parcial_ampla: Int?
    var bolsa_parcial_cotas: Int?
    var campus_external_id: Int?
    var campus_nome: String?
    var cidade_busca: String?
    var grau: String?
    var mensalidade: String?
    var nome: String?
    var nota_integral_ampla: String?
    var nota_integral_cotas: String?
    var nota_parcial_ampla: String?
    var nota_parcial_cotas: String?
    var turno: String?
    var uf_busca: String?
    var universidade_nome: String?
}
