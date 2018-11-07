//
//  SalarioMagistrado.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import Foundation

struct SalarioMagistrados: Codable {
    var count: Int
    var next: String?
    var previous: String?
    var results: [SalariosDetails]
}

struct SalariosDetails: Codable {
    var cargo: String?
    var cpf: String?
    var data_de_publicacao: String?
    var descontos_diversos: String
    var diarias : String?
    var direitos_eventuais: String?
    var direitos_pessoais: String?
    var imposto_de_renda : String?
    var indenizacoes: String?
    var lotacao: String?
    var mesano_de_referencia: String?
    var nome : String?
    var orgao: String?
    var previdencia_publica: String?
    var remuneracao_do_orgao_de_origem: String?
    var rendimento_liquido: String?
    var retencao_por_teto_constitucional: String?
    var subsidio: String?
    var total_de_descontos: String?
    var total_de_rendimentos: String?
    var tribunal: String?
    var url: String?
}

