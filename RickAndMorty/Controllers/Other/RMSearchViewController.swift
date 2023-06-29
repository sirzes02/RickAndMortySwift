//
//  RMSearchViewController.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 29/06/23.
//

import UIKit

/// Configurable controller to search
class RMSearchViewController: UIViewController {
    
    struct Config {
        enum `Type` {
            case character
            case episode
            case location
        }
        
        let type: `Type`
    }
    
    private let config: Config
    
    init(config: Config) {
        self.config = config
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Search"
        view.backgroundColor = .systemBackground
    }
}
