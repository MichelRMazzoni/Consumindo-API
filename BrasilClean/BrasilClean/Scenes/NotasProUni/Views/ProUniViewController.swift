//
//  ProUniViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 07/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

class ProUniViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    // Var's
    var interactor: ProUniBusinessLogic?
    var router: (NSObjectProtocol & ProUniRoutingLogic & ProUniDataPassing)?
    var notasProUni = [ProUniList.ProUniNotasList.ViewModel.NotasProUniDisplay]()

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
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ProUniTableViewCell", bundle: nil), forCellReuseIdentifier: "prouniCell")
        getNotas()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        SVProgressHUD.dismiss()
    }

    func getNotas(){
        showSpinner()
        let request = ProUniList.ProUniNotasList.Request()
        interactor?.getNotasProUni(request: request)
    }
    
    func showSpinner(){
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }
}
