//
//  SecondInteractor.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import Foundation

protocol SecondInteractorProtocol {
    func getButtonTitle() -> String
}

final class SecondInteractor: SecondInteractorProtocol {
    func getButtonTitle() -> String {
        return "Go Back" // Можно брать из Localizable.strings
    }
}
