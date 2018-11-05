//
//  DatasetsViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 05/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit
import SVProgressHUD

class DatasetsViewController: UIViewController {

    // Var's
    var interactor: DatasetsBusinessLogic?
    var router: (NSObjectProtocol & DatasetsRoutingLogic & DatasetsDataPassing)?
    var datasetsList = [Datasets.DatasetList.ViewModel.DatasetListDisplay]()
    
    @IBOutlet weak var tableView: UITableView!

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
        tableView.register(UINib(nibName: "DatasetsTableViewCell", bundle: nil), forCellReuseIdentifier: "datasetsCell")
        
        getDatasets()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let index = self.tableView.indexPathForSelectedRow{
            self.tableView.deselectRow(at: index, animated: true)
        }
    }

    func getDatasets(){
        showSpinner()
        let request = Datasets.DatasetList.Request()
        interactor?.getDatasetsList(request: request)
    }
    
    func showSpinner(){
        SVProgressHUD.setDefaultAnimationType(.native)
        SVProgressHUD.show()
    }
    
}
