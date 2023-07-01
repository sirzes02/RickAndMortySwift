//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 1/07/23.
//

import Foundation

final class RMLocationViewViewModel {
    private var locations: [RMLocation] = []
    private var cellViewModels: [String] = []
    
    init() {
        
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests, expecting: String.self) { result in
            switch result {
            case .success(let model):
                break
            case .failure(let model):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
