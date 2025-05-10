//
//  FirstPresenter.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import Foundation

protocol FirstPresenterProtocol {
    func viewDidLoad()
    func didTapButton()
}

final class FirstPresenter: FirstPresenterProtocol {
    weak var view: FirstViewProtocol?
    var interactor: FirstInteractorProtocol
    var router: FirstRouterProtocol
    
    init(view: FirstViewProtocol, interactor: FirstInteractorProtocol, router: FirstRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        let buttonTitle = interactor.getButtonTitle()
        view?.setButtonTitle(buttonTitle)
    }
    
    func didTapButton() {
        router.openSecondScreen()
    }
}
