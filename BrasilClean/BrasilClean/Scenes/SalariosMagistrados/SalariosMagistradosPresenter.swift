//
//  SalariosMagistradosPresenter.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

protocol SalariosMagistradosPresentationLogic {
    func successGetSalariosList(response: SalariosMagistradosList.Salarioslist.Response.Success)
    func failureGetSalariosList(response: SalariosMagistradosList.Salarioslist.Response.Failure)
}

class SalariosMagistradosPresenter: SalariosMagistradosPresentationLogic {

    // Var's
    weak var viewController: SalariosMagistradosDisplayLogic?
    
    func successGetSalariosList(response: SalariosMagistradosList.Salarioslist.Response.Success) {
        let salariosMagistrados = response.salariosList.compactMap {
            SalariosMagistradosList.Salarioslist.ViewModel.SalariosDisplay(
                nome: $0.nome ?? "vazio",
                cargo: $0.cargo ?? "vazio",
                lotacao: $0.lotacao ?? "vazio",
                diarias: $0.diarias ?? "vazio",
                indenizacoes: $0.indenizacoes ?? "vazio",
                descontos: $0.total_de_descontos ?? "vazio",
                totalRendimentos: $0.total_de_rendimentos ?? "vazio",
                totalLiquido: $0.rendimento_liquido ?? "vazio"
            )
        }
        
        let vm = SalariosMagistradosList.Salarioslist.ViewModel.Success(items: salariosMagistrados)
        self.viewController?.successGetSalariosList(response: vm)
    }
    
    func failureGetSalariosList(response: SalariosMagistradosList.Salarioslist.Response.Failure) {
        let vm = SalariosMagistradosList.Salarioslist.ViewModel.Failure(message: response.error.localizedDescription)
        self.viewController?.failureGetSalariosList(response: vm)
    }
}
