//
//   VIPERProtocols.swift
//  AppLaunch
//
//  Created by Banca March on 28/11/22.
//  
//

import Foundation

protocol VIPERViewProtocol {
    associatedtype PresenterProtocol
    var presenter: PresenterProtocol {get}
}

protocol VIPERPresenterProtocol {
    associatedtype View
    associatedtype InteractorProtocol
    associatedtype RouterProtocol
    
    var view: View? { get }
    var router: RouterProtocol { get }
    var interactor: InteractorProtocol { get }
}

protocol VIPERInteractorProtocol {
    associatedtype PresenterProtocol
    var presenter: PresenterProtocol? {get}
}

protocol VIPERRouterProtocol {
    associatedtype PresenterProtocol
    associatedtype View
    var presenter: PresenterProtocol {get}
    var view: View? { get }
}
