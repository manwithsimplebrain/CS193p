//
//  Theme.swift
//  Memorize
//
//  Created by Dat on 07/02/2025.
//

import Foundation

enum Theme {
    case animal
    case halloween
    case transport
}

extension Theme {
    var label: String {
        switch self {
        case .animal: return "Animal"
        case .halloween: return "Halloween"
        case .transport: return "Transport"
        }
    }
    
    var symbol: String {
        switch self {
        case .animal: return "questionmark.circle"
        case .halloween: return "questionmark.circle"
        case .transport: return "car"
        }
    }
}
