//
//  GoButton.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import UIKit

enum GoButtonColorSchemes {
    
    case white
    case orange
    case grey
}

class GoButton: UIView {

    private let button = UIButton()
    var action: (() -> Void)?
    var scheme: GoButtonColorSchemes = .white {
        didSet {
            setColorScheme(scheme: scheme)
        }
    }
    
    init(scheme: GoButtonColorSchemes = .white) {
        super.init(frame: .zero)
        self.scheme = scheme
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        self.backgroundColor = .clear
        setupButton()
    }
    
    private func setupButton() {
        self.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = .boldSystemFont(ofSize: 18)
        button.layer.cornerRadius = 24
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            button.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            button.topAnchor.constraint(equalTo: self.topAnchor)
            
        ])
        
        setColorScheme(scheme: .white)
    }
    
    @objc private func tappedButton() {
        guard let action = self.action else { return }
        action()
    }
    
    private func setColorScheme(scheme: GoButtonColorSchemes) { //public
        switch scheme {
        case .white:
            button.backgroundColor = .white
            button.setTitleColor(.orange, for: .normal)
        case .orange:
            button.backgroundColor = .systemOrange
            button.setTitleColor(.white, for: .normal)
        case .grey:
            button.backgroundColor = .systemGray
            button.setTitleColor(.black, for: .normal)
        }
    }
    
    public func setTitle(_ title: String?) {
        button.setTitle(title, for: .normal)
    }
}
