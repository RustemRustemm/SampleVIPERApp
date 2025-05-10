//
//  FirstRouter.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import UIKit

protocol FirstRouterProtocol {
    func start()
    func openSecondScreen()
}

final class FirstRouter: FirstRouterProtocol {
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = FirstViewController()
        let interactor = FirstInteractor()
        let router = self
        let presenter = FirstPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        navigationController?.setViewControllers([view], animated: false)
    }
    
    func openSecondScreen() {

        //TODO: - create second router
    }
}
