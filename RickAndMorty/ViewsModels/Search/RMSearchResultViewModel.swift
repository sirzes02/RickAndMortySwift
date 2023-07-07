//
//  RMSearchResultViewModel.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 7/07/23.
//

import Foundation


enum RMSearchResultViewModel {
    case characters([RMCharacterCollectionViewCellViewModel])
    case episodes([RMCharacterEpisodeCollectionViewCellViewModel])
    case locations([RMLocationTableViewCellViewModel])
}
