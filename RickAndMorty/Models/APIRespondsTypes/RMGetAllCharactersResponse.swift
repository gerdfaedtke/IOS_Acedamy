//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 08.03.23.
//

import Foundation

struct RMGettAllCharactersResponse: Codable {
    struct Info:  Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
    
}


