//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 03.03.23.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    // ´ = Backtikes
    case `unknown` = "unknown"
  
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
           return "Unknown"
        }
    }
}
