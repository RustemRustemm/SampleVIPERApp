//
//  CustomButton.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 11.05.2025.
//

import UIKit

class CustomButton: UIButton {

    // MARK: - Init
    init(title: String, target: Any?, action: Selector) {
        super.init(frame: .zero)
        setupButton(title: title, target: target, action: action)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setupButton(title: String, target: Any?, action: Selector) {
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        setTitleColor(.systemBlue, for: .normal)
        addTarget(target, action: action, for: .touchUpInside)
        translatesAutoresizingMaskIntoConstraints = false
    }
}


