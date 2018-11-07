//
//  GastosDeputados.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation


struct GastosDeputados: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [GastosDeputadosDetails]
}

struct GastosDeputadosDetails: Codable {
    var codlegislatura: Int?
    var datemissao: String?
    var idecadastro: Int?
    var idedocumento: Int?
    var indtipodocumento: Int?
    var nucarteiraparlamentar: Int?
    var nudeputadoid: Int?
    var nulegislatura: Int?
    var numano: Int?
    var numespecificacaosubcota: Int?
    var numlote: Int?
    var nummes: Int?
    var numparcela: Int?
    var numressarcimento: Int?
    var numsubcota: Int?
    var sgpartido: String?
    var sguf: String?
    var txnomeparlamentar: String?
    var txtcnpjcpf: String?
    var txtdescricao: String?
    var txtdescricaoespecificacao: String?
    var txtfornecedor: String?
    var txtnumero: String?
    var txtpassageiro: String?
    var txttrecho: String?
    var vlrdocumento: String?
    var vlrglosa: String?
    var vlrliquido: String?
    var vlrrestituicao: String?
}
