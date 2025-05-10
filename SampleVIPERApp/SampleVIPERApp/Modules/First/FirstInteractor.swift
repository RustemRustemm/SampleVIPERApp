//
//  FirstInteractor.swift
//  SampleVIPERApp
//
//  Created by Rustam Shakirzianov on 10.05.2025.
//

import Foundation

protocol FirstInteractorProtocol {
    func getButtonTitle() -> String
}

final class FirstInteractor: FirstInteractorProtocol {
    func getButtonTitle() -> String {
        return "Open Second Screen" // Можно брать из Localizable.strings
    }
}
