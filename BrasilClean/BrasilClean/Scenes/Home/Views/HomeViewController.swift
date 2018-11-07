//
//  HomeViewController.swift
//  BrasilClean
//
//  Created by Michel Mazzoni on 06/11/18.
//  Copyright (c) 2018 Michel Mazzoni. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var btnGastosDiretos: UIButton!
    @IBOutlet weak var btnSalarioMagistrados: UIButton!
    @IBOutlet weak var btnGastosDeputados: UIButton!
    @IBOutlet weak var btnProUni: UIButton!
    
    
    // Var's
    var interactor: HomeBusinessLogic?
    var router: (NSObjectProtocol & HomeRoutingLogic & HomeDataPassing)?

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

    
    @IBAction func actionGastosDiretos(_ sender: UIButton) {
        print("actionGastosDiretos")
        self.performSegue(withIdentifier: "pushGastosDiretos", sender: nil)
    }
    
    @IBAction func actionSalarioMagistrados(_ sender: UIButton) {
        print("actionSalarioMagistrados")
        self.performSegue(withIdentifier: "pushSalariosMagistrados", sender: nil)
    }
    
    @IBAction func actionGastosDeputados(_ sender: UIButton) {
        print("actionGastosDeputados")
    }
    
    @IBAction func actionProUni(_ sender: UIButton) {
        print("actionProUni")
    }

}
