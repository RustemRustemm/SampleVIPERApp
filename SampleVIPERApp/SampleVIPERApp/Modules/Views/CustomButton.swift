//
//  CustomButton.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 11.05.2025.
//

import UIKit

enum ButtonStyle {
    case primary   // Синяя кнопка
    case secondary // Серая кнопка
}

final class CustomButton: UIButton {

    // MARK: - Init
    init(title: String, style: ButtonStyle, target: Any?, action: Selector) {
        super.init(frame: .zero)
        setupButton(title: title, style: style ,target: target, action: action)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setupButton(title: String, style: ButtonStyle, target: Any?, action: Selector) {
        
        setTitle(title, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
        
        switch style {
        case .primary:
            titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            setTitleColor(.systemBlue, for: .normal)
            setTitleColor(UIColor(red: 0, green: 0, blue: 255, alpha: 0.2), for: .highlighted)
            backgroundColor = .clear
        case .secondary:
            titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
            setTitleColor(.white, for: .normal)
            setTitleColor(.black, for: .highlighted)
            backgroundColor = .systemGray
            layer.cornerRadius = 8
            
            NSLayoutConstraint.activate([
                self.widthAnchor.constraint(equalToConstant: 200),
                self.heightAnchor.constraint(equalToConstant: 50)
            ])
            
        }
        
        addTarget(target, action: action, for: .touchUpInside)
        
    }
}


