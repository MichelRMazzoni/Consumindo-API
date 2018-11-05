//
//  GastosDiretos.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation

struct GastosDiretos: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [GastosDetails]
}

struct GastosDetails: Codable {
    var ano: Int
    var codigo_acao: String
    var codigo_elemento_despesa: Int
    var codigo_favorecido: String
    var codigo_funcao: Int
    var codigo_grupo_despesa: Int
    var codigo_orgao: Int
    var codigo_orgao_superior: Int
    var codigo_programa: Int
    var codigo_subfuncao: Int
    var codigo_unidade_gestora: Int
    var data_pagamento: Int?
    var data_pagamento_original: String
    var gestao_pagamento: String
    var linguagem_cidada: String?
    var mes: Int
    var nome_acao: String
    var nome_elemento_despesa: String
    var nome_favorecido: String
    var nome_funcao: String
    var nome_grupo_despesa: String
    var nome_orgao: String
    var nome_orgao_superior: String
    var nome_programa: String
    var nome_subfuncao: String
    var nome_unidade_gestora: String
    var numero_documento: String
    var valor: String
}

