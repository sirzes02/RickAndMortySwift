//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 21/06/23.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    /// Endpoint to get chracter info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
