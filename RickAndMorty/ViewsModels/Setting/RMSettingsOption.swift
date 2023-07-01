//
//  RMSettingsOption.swift
//  RickAndMorty
//
//  Created by Santiago Varela on 30/06/23.
//

import UIKit

enum RMSettingsOption: CaseIterable {
    case rateApp
    case contacUs
    case terms
    case privacy
    case apiReference
    case viewSeries
    case viewCode
    
    var targetUrl: URL? {
        switch self {
        case .rateApp:
            return nil
        case .contacUs:
            return URL(string: "https://www.google.com")
        case .terms:
            return URL(string: "https://www.google.com")
        case .privacy:
            return URL(string: "https://www.google.com")
        case .apiReference:
            return URL(string: "https://www.google.com")
        case .viewSeries:
            return URL(string: "https://www.google.com")
        case .viewCode:
            return URL(string: "https://www.google.com")
        }
    }
    
    var displayTitle: String {
        switch self {
        case .rateApp:
            return "Rate App"
        case .contacUs:
            return "Contact us"
        case .terms:
            return "Terms of service"
        case .privacy:
            return "Privacy Policy"
        case .apiReference:
            return "API Reference"
        case .viewSeries:
            return "View Video Series"
        case .viewCode:
            return "View App Code"
        }
    }
    
    var iconContainerColor: UIColor {
        switch self {
        case .rateApp:
            return .systemBlue
        case .contacUs:
            return .systemGreen
        case .terms:
            return .systemRed
        case .privacy:
            return .systemYellow
        case .apiReference:
            return .systemOrange
        case .viewSeries:
            return .systemPurple
        case .viewCode:
            return .systemPink
        }
    }
    
    var iconImage: UIImage? {
        switch self {
        case .rateApp:
            return UIImage(systemName: "star.fill")
        case .contacUs:
            return UIImage(systemName: "paperplane")
        case .terms:
            return UIImage(systemName: "doc")
        case .privacy:
            return UIImage(systemName: "lock")
        case .apiReference:
            return UIImage(systemName: "list.clipboard")
        case .viewSeries:
            return UIImage(systemName: "tv.fill")
        case .viewCode:
            return UIImage(systemName: "hammer.fill")
        }
    }
}
