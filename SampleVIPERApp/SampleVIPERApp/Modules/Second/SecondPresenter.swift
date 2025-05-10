//
//  SecondPresenter.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import Foundation

protocol SecondPresenterProtocol {
    func viewDidLoad()
    func didTapButton()
}

final class SecondPresenter: SecondPresenterProtocol {
    weak var view: SecondViewProtocol?
    var interactor: SecondInteractorProtocol
    var router: SecondRouterProtocol
    
    init(view: SecondViewProtocol, interactor: SecondInteractorProtocol, router: SecondRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        let buttonTitle = interactor.getButtonTitle()
        view?.setButtonTitle(buttonTitle)
    }
    
    func didTapButton() {
        router.goBack()
    }
}
