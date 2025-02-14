//
//  MemoryGame.swift
//  Memorize
//
//  Created by Dat on 13/02/2025.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    init(numberOfPairOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        for index in 0..<numberOfPairOfCards {
            let cardContent = cardContentFactory(index)
            cards.append(Card(content: cardContent))
            cards.append(Card(content: cardContent))
        }
    }
    
    func choose(_ card: Card) {
        
    }
    
    mutating func shuffle() {
        cards.shuffle()
    }
    
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
    }
}
