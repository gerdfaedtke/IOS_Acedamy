//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Gerd Faedtke on 01.03.23.
//

import Foundation

/// Object thats represents a single API call
final class RMRequest {
    
    /// API Constants
    private struct Contants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    /// Disired endpoint
    private let endpoint: RMEndpoint
    
    /// Path componants for API, if any
    private let pathComponents: [String]
    
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api in string format
    private var urlString: String {
        var string = Contants.baseURL
        string += "/"                               // append
        string += endpoint.rawValue                 // append
        
        if !pathComponents.isEmpty {
            pathComponents.forEach ({
                string += "/\($0)"
            })
        }
       
        if !queryParameters.isEmpty {
            string += "?"
            let argummentString = queryParameters.compactMap ({
                guard let value = $0.value else { return nil }
                return "\($0.name) =\(value)"
            }).joined(separator: "&")
            
                string += argummentString
        }
        
        return string
    }
    
    /// Computed and constructed API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Disired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct report
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponents: pathComponents
    ///   - queryParameters: queryParameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
}

extension RMRequest {
    static let listCharacterRequests = RMRequest(endpoint: .character)
}
