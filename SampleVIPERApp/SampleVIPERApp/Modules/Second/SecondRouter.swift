//
//  SecondRouter.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import UIKit

protocol SecondRouterProtocol {
    func start()
    func goBack()
}

final class SecondRouter: SecondRouterProtocol {
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let view = SecondViewController()
        let interactor = SecondInteractor()
        let router = self
        let presenter = SecondPresenter(view: view, interactor: interactor, router: router)
        
        view.presenter = presenter
        navigationController?.pushViewController(view, animated: true)
    }
    
    func goBack() {
        navigationController?.popViewController(animated: true)
    }
}
