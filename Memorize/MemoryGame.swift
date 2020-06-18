//
//  MemoryGame.swift
//  Memorize
//
//  Created by Khadar Ahmed Yusuf on 17/06/2020.
//  Copyright © 2020 Khadar Ahmed Yusuf. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card choosen: \(card)")
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
        
        
    }
}
