//
//  SecondViewController.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import UIKit

protocol SecondViewProtocol: AnyObject {
    func setButtonTitle(_ title: String)
}

class SecondViewController: UIViewController, SecondViewProtocol {

    var presenter: SecondPresenterProtocol!
        
        // Заменяем lazy var на кастомную кнопку
        private lazy var button = CustomButton(
            title: "Open Second Screen",
            style: .secondary,
            target: self,
            action: #selector(didTapButton)
        )

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .lightGray
            setupUI()
            presenter.viewDidLoad()
        }
        
        private func setupUI() {
            view.addSubview(button)
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
        
        @objc private func didTapButton() {
            presenter.didTapButton()
        }
        
        // MARK: - SecondViewProtocol
        func setButtonTitle(_ title: String) {
            button.setTitle(title, for: .normal)
        }

}
