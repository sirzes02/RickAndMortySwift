//
//  RMEpisodeDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 25/06/23.
//

import UIKit

class RMEpisodeDetailViewViewModel: NSObject {
    private let endpointUrl: URL?
    
    init(endpointUrl: URL?) {
        self.endpointUrl = endpointUrl
    }
    
    private func fetchEpisodeData() {
        guard let url = endpointUrl,
              let request = RMRequest(url: url) else {
            return
        }
        
        RMService.shared.execute(request, expecting: RMEpisode.self) { result in
            switch result {
            case .success(let success):
                print()
            case .failure(let failure):
                break
            }
        }
    }
}
