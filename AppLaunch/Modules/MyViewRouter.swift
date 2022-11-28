//
//  MyViewRouter.swift
//  AppLaunch
//
//  Created by Banca March on 28/11/22.
//  
//

import Foundation

protocol MyViewPresenterRouter: AnyObject {
    func test()
}

class MyViewRouter: VIPERRouterProtocol, MyViewPresenterRouter {
    weak var view: MyViewController?
    weak var presenter: MyViewPresenterProtocol?
    
    func test() {
        
    }
}
