//
//  ProUniPresenter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol ProUniPresentationLogic {
    func successGetNotas(response: ProUniList.ProUniNotasList.Response.Success)
    func failureGetNotas(response: ProUniList.ProUniNotasList.Response.Failure)
}

class ProUniPresenter: ProUniPresentationLogic {

    // Var's
    weak var viewController: ProUniDisplayLogic?

    func successGetNotas(response: ProUniList.ProUniNotasList.Response.Success) {
        let notasProUni = response.proUniNotasList.compactMap {
            ProUniList.ProUniNotasList.ViewModel.NotasProUniDisplay (
                nomeCurso: $0.nome ?? "--",
                nomeUniversidade: $0.universidade_nome ?? "--",
                cidade: $0.cidade_busca ?? "--",
                estado: $0.uf_busca ?? "--",
                turno: $0.turno ?? "--",
                mensalidade: $0.mensalidade ?? "--",
                grau: $0.grau ?? "--",
                notaIntegralAmpla: $0.nota_integral_ampla ?? "--",
                notaIntegralCotas: $0.nota_integral_cotas ?? "--",
                notaParcialAmpla: $0.nota_parcial_ampla ?? "--"
            )
        }
        let vm = ProUniList.ProUniNotasList.ViewModel.Success(items: notasProUni)
        self.viewController?.successGetNotasProUni(response: vm)
    }
    
    func failureGetNotas(response: ProUniList.ProUniNotasList.Response.Failure) {
        let vm = ProUniList.ProUniNotasList.ViewModel.Failure(message: response.error.localizedDescription)
        self.viewController?.failureGetNotasProUni(response: vm)
    }
    
}
