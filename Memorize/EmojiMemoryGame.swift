//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Khadar Ahmed Yusuf on 18/06/2020.
//  Copyright © 2020 Khadar Ahmed Yusuf. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame{
    private(set) var memoryGame: MemoryGame<String>
    
    // MARK: - Action to the Model

    var cards: Array<MemoryGame<String>.Card> {
        return memoryGame.cards
    }
    
    
    // MARK: - Intents
    
    func choose(card: MemoryGame<String>.Card) {
        memoryGame.choose(card: card)
    }
    
}
