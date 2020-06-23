//
//  ContentView.swift
//  Memorize
//
//  Created by Khadar Ahmed Yusuf on 10/06/2020.
//  Copyright © 2020 Khadar Ahmed Yusuf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var emojiMemoryGame: EmojiMemoryGame
    
    
    var body: some View {
        return HStack(content: {
            ForEach(emojiMemoryGame.cards) { index in
                CardView(isFaceUp: false)
        }
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct  CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack(content: {
            if card.isFaceUp {
                 RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                 RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiMemoryGame: EmojiMemoryGame())
    }
}
