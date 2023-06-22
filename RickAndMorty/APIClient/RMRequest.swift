//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 21/06/23.
//

import Foundation

/// Object that reppresents a singlet API call
final class RMRequest {
    /// API Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint /// Desired endpoint
    private let pathComponents: [String] /// Path components for API, if any
    private let queryParameters: [URLQueryItem] /// Query arguments for API, if any
    
    /// Contructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    // Computed & constructed APU url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    // Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Constructed request
    /// - Parameters:
    ///     - endpoint: target endpoint
    ///     - pathcomponents: Collecton of Path components
    ///     - queryParametetrs: Collecton of query parameters
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}

extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
