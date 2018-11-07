//
//  SalariosMagistradosViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

class SalariosMagistradosViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    // Var's
    var interactor: SalariosMagistradosBusinessLogic?
    var router: (NSObjectProtocol & SalariosMagistradosRoutingLogic & SalariosMagistradosDataPassing)?
    var salariosList = [SalariosMagistradosList.Salarioslist.ViewModel.SalariosDisplay]()

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
        
        tableView.register(UINib(nibName: "SalariosTableViewCell", bundle: nil), forCellReuseIdentifier: "salariosCell")
        
        getSalarios()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        SVProgressHUD.dismiss()
    }

    func getSalarios(){
        showSpinner()
        let request = SalariosMagistradosList.Salarioslist.Request()
        interactor?.getSalariosList(request: request)
    }
    
    func showSpinner(){
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }
}
