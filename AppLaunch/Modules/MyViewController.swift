//
//  MyViewController.swift
//  AppLaunch
//
//  Created by fjcedron@hiberus.com on 28/11/22.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet private(set) weak var testButton: UIButton!
    
    var presenter: MyViewPresenterProtocol
    
    init(presenter: MyViewPresenterProtocol) {
        self.presenter = presenter
        
        super.init(nibName: "MyViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonTapped(_ sender: UIButton) {
        print("tapped")
    }
    
}
