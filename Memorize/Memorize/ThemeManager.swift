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
        let adjustCount = data[defaultTheme]!.count > limitCardCount ? limitCardCount : data[defaultTheme]!.count
        let sliceEmojis = Array(data[defaultTheme]![0..<adjustCount/2])
        self.activeTheme = defaultTheme
        emojis = (sliceEmojis+sliceEmojis).shuffled()
        allThemes = Array(data.keys)
        cardCount = adjustCount
    }
    
    func changeTheme(to theme: Theme) {
        guard theme != activeTheme else {
            return
        }
        activeTheme = theme
        emojis = randomPickEmojis()
    }
}

extension ThemeManager {
    private func randomPickEmojis() -> [String] {
        let randomEmojis = data[activeTheme]!.shuffled()
        let sliceEmojis = Array(randomEmojis[0..<cardCount/2])
        return (sliceEmojis+sliceEmojis).shuffled()
    }
}
