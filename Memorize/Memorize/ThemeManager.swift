//
//  ThemeManager.swift
//  Memorize
//
//  Created by Dat on 07/02/2025.
//

import Foundation
import SwiftUI

class ThemeManager: ObservableObject {
    let data: [Theme: [String]] = [
        .animal: ["🐲", "🐝", "🦅", "🐵", "🐮", "🦁", "🦊", "🐰", "🐶", "🐷", "🐭", "🐻"],
        .halloween: ["🎃", "👹", "💀", "😈", "👻", "👽", "🙀", "🤡"],
        .transport: ["🚌", "🚎", "🚑", "🚒", "🛵", "🚀", "🛩", "🚂", "🚲", "🚁"]
    ]
    let limitCardCount = 8
    
    @Published var emojis = [String]()
    @Published var activeTheme: Theme = .animal
    var cardCount: Int
    var allThemes: [Theme]
    
    init() {
        let defaultTheme = Theme.animal
        self.activeTheme = defaultTheme
        emojis = data[defaultTheme]!
        allThemes = Array(data.keys)
        cardCount = data[defaultTheme]!.count > limitCardCount ? limitCardCount : data[defaultTheme]!.count
    }
    
    func changeTheme(to theme: Theme) {
        guard theme != activeTheme else {
            return
        }
        activeTheme = theme
        emojis = data[activeTheme]!
    }
}
