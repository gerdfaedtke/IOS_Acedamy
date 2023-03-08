//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 01.03.23.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}
