//
//  GastosDeputados+TableView.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright © 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

extension GastosDeputadosViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gastosDeputados.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gastosDeputadosCell", for: indexPath) as! GastosDeputadosTableViewCell
        
        let item = gastosDeputados[indexPath.row]
        cell.lblNome.text = "Nome: \(item.nome)"
        cell.lblPartido.text = "Partido: \(item.partido)"
        cell.lblEstado.text = "Estado: \(item.estado)"
        cell.lblValorGasto.text = "Valor gasto: R$\(item.valorGasto)".replacingOccurrences(of: ".", with: ",")
        cell.lblDescricaoGasto.text = "Tipo do gasto: \(item.tipoGasto)"
        
        return cell
    }
}
