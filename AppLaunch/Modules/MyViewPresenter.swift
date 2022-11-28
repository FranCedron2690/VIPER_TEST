//
//  MyViewPresenter.swift
//  AppLaunch
//
//  Created by Banca March on 28/11/22.
//  
//

import Foundation

protocol MyViewPresenterProtocol: AnyObject {
    func test()
}

class MyViewPresenter: VIPERPresenterProtocol, MyViewPresenterProtocol {
    weak var view: MyViewController?
    
    var router: MyViewPresenterRouter
    
    var interactor: MyViewInteractorProtocol
    
    // MARK: - Initialize
    init(view: MyViewController? = nil, router: MyViewPresenterRouter, interactor: MyViewInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
    
    func test() {
        
    }
}
