//
//  SalariosMagistradosViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class SalariosMagistradosViewController: UIViewController {

    // Var's
    var interactor: SalariosMagistradosBusinessLogic?
    var router: (NSObjectProtocol & SalariosMagistradosRoutingLogic & SalariosMagistradosDataPassing)?

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
    }

}
