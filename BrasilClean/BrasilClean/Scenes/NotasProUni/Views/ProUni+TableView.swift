//
//  ProUni+TableView.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

extension ProUniViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notasProUni.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "prouniCell", for: indexPath) as! ProUniTableViewCell
        
        let item = notasProUni[indexPath.row]
        cell.lblNomeUniversidade.text = item.nomeUniversidade
        cell.lblCidade.text = "Cidade: \(item.cidade)"
        cell.lblCurso.text = "Curso: \(item.nomeCurso)"
        cell.lblUF.text = "Estado: \(item.estado)"
        cell.lblTurno.text = "Turno: \(item.turno)"
        cell.lblNivel.text = "Grau: \(item.grau)"
        cell.lblMensalidade.text = "Mensalidade: R$\(item.mensalidade)".replacingOccurrences(of: ".", with: ",")
        cell.lblNotaIntegralAmpla.text = "Nota integral(ampla) \(item.notaIntegralAmpla)"
        cell.lblNotaIntegralCota.text = "Nota integral(cota) \(item.notaIntegralCotas)"
        cell.lblNotaParcialAmpla.text = "Nota parcial(ampla) \(item.notaParcialAmpla)"
        
        return cell
    }
}
