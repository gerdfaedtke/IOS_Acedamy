//
//  RMService.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 01.03.23.
//

import Foundation



/// Primary API service object to get Rick and Morty data
final class RMService {
    static let shared = RMService()
    /// Shared singelton innstance
    private init() {}
    /// Privatized constructor
    ///  - Parameters
    ///  - request: Request instance
    ///  - type: The type of object we expect to get back
    ///  - completion: Callback with data error 
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
    
    
    
}
