//
//  RMCharacterInformationCollectionViewCell.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 23/06/23.
//

import UIKit

final class RMCharacterInformationCollectionViewCell: UICollectionViewCell {
    static let cellIdentifier = "RMCharacterInformationCollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .tertiarySystemBackground
        contentView.layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setUpConstraints() {
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    public func configure(with viewModel: RMCharacterInformationCollectionViewCellViewModel) {
        
    }
}
