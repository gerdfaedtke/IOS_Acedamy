//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 01.03.23.
//

import Foundation

struct RMCharacter: Codable {
    
    let id: Int
    let name: String
    let status: RMCharacterStatus
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigen
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
    
}

