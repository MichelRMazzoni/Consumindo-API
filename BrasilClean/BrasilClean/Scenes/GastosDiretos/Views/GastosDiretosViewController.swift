//
//  GastosDiretosViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

class GastosDiretosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    // Var's
    var interactor: GastosDiretosBusinessLogic?
    var router: (NSObjectProtocol & GastosDiretosRoutingLogic & GastosDiretosDataPassing)?
    var gastosList = [GastosDiretosList.GastosList.ViewModel.GastosDisplay]()

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
        tableView.register(UINib(nibName: "GastosDiretosTableViewCell", bundle: nil), forCellReuseIdentifier: "gastosDiretosCell")
        
        getGastos()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        SVProgressHUD.dismiss()
    }
    
    func getGastos(){
        showSpinner()
        let request = GastosDiretosList.GastosList.Request()
        interactor?.getGastosDiretosList(request: request)
    }
    
    func showSpinner(){
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }

}
