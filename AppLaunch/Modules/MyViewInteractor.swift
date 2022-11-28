//
//  MyViewInteractor.swift
//  AppLaunch
//
//  Created by Banca March on 28/11/22.
//  
//

import Foundation

protocol MyViewInteractorProtocol: AnyObject {
    func test()
}

class MyViewInteractor: VIPERInteractorProtocol, MyViewInteractorProtocol {
    weak var presenter: MyViewPresenterProtocol?
    
    func test() {
        
    }
}
