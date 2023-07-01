//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 21/06/23.
//

import UIKit

/// Controller to show and earch for Settings
final class RMSettingsViewController: UIViewController {
    private let viewModel = RMSettingsViewViewModel(
        cellViewModels: RMSettingsOption.allCases.compactMap({
            return RMSettingsCellViewModel(type: $0)
        })
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Settings"
    }
}
