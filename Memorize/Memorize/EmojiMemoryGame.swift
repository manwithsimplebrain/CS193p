//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Dat on 13/02/2025.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🐲", "🐝", "🦅", "🐵", "🐮", "🦁", "🦊", "🐰", "🐶", "🐷", "🐭", "🐻"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame(numberOfPairOfCards: 20){
            if emojis.indices.contains($0) {
                return emojis[$0]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
}
