//
//  MyViewAssembly.swift
//  AppLaunch
//
//  Created by Banca March on 28/11/22.
//  
//

import Foundation
import UIKit

final class MyAssembly {
    static func buildMyView() -> MyViewController {
        let router = MyViewRouter()
        let interactor = MyViewInteractor()
        let presenter = MyViewPresenter(router: router, interactor: interactor)
        interactor.presenter = presenter
        let mainView = MyViewController(presenter: presenter)
        presenter.view = mainView
        router.presenter = presenter
        router.view = mainView
        return mainView
    }
    
}
