//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 23/06/23.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
