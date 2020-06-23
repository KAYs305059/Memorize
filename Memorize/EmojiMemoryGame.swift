//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Khadar Ahmed Yusuf on 18/06/2020.
//  Copyright © 2020 Khadar Ahmed Yusuf. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    private var memoryGame: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in
            return emojis[pairIndex]
        }

    }
    
    // MARK: - Access to the Model

    var cards: Array<MemoryGame<String>.Card> {
         memoryGame.cards
    }
    
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        memoryGame.choose(card: card)
    }
    
}
