//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 01.03.23.
//

import Foundation

/// Represents unique API endpoints
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character // "character"
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
    
}
