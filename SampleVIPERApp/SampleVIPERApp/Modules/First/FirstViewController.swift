//
//  FirstViewController.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import UIKit

protocol FirstViewProtocol: AnyObject {
    func setButtonTitle(_ title: String)
}

class FirstViewController: UIViewController, FirstViewProtocol {

    var presenter: FirstPresenterProtocol!
        
        private lazy var button: UIButton = {
            let button = UIButton(type: .system)
            button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()

        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
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
        
        // MARK: - FirstViewProtocol
        func setButtonTitle(_ title: String) {
            button.setTitle(title, for: .normal)
        }
}
