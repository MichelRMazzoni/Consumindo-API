//
//  Salarios+TableView.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

extension SalariosMagistradosViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salariosList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "salariosCell", for: indexPath) as! SalariosTableViewCell
        
        let item = salariosList[indexPath.row]
        cell.lblNome.text = "Nome: \(item.nome)"
        cell.lblCargo.text = "Cargo: \(item.cargo)"
        cell.lblLotacao.text = "Lotação: \(item.lotacao)"
        cell.lblDiarias.text = "Diarias: R$\(item.diarias)".replacingOccurrences(of: ".", with: ",")
        cell.lblIndenizacoes.text = "Indenizações: R$\(item.indenizacoes)".replacingOccurrences(of: ".", with: ",")
        cell.lblDescontos.text = "Descontos: R$\(item.descontos)".replacingOccurrences(of: ".", with: ",")
        cell.lblTotalRendimentos.text = "Rendimentos: R$\(item.totalRendimentos)".replacingOccurrences(of: ".", with: ",")
        cell.lblTotalLiquido.text = "Total Liquido: R$\(item.totalLiquido)".replacingOccurrences(of: ".", with: ",")
        return cell
    }
}
