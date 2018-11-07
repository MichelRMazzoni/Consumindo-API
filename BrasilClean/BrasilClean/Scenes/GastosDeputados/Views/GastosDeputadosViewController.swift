//
//  GastosDeputadosViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

class GastosDeputadosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // Var's
    var interactor: GastosDeputadosBusinessLogic?
    var router: (NSObjectProtocol & GastosDeputadosRoutingLogic & GastosDeputadosDataPassing)?
    
    var gastosDeputados = [GastosDeputadosList.GastosList.ViewModel.GastosDeputadosDisplay]()

    // Constructor
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "GastosDeputadosTableViewCell", bundle: nil), forCellReuseIdentifier: "gastosDeputadosCell")
        
        getGastosDeputados()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        SVProgressHUD.dismiss()
    }

    func getGastosDeputados(){
        showSpinner()
        let request = GastosDeputadosList.GastosList.Request()
        interactor?.getGastosDeputadosList(request: request)
    }
    
    func showSpinner(){
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }
}
