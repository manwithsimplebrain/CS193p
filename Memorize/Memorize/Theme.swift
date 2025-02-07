//
//  Theme.swift
//  Memorize
//
//  Created by Dat on 07/02/2025.
//

import Foundation
import SwiftUI

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
        case .animal: return "swift"
        case .halloween: return "brain"
        case .transport: return "car"
        }
    }
    
    var color: Color {
        switch self {
        case .animal: return .blue
        case .halloween: return .red
        case .transport: return .orange
        }
    }
}
