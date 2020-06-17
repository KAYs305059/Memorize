//
//  ContentView.swift
//  Memorize
//
//  Created by Khadar Ahmed Yusuf on 10/06/2020.
//  Copyright © 2020 Khadar Ahmed Yusuf. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack(content: {
            ForEach(0..<4, content: { index in
                CardView(isFaceUp: false)
        })
        })
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}

struct  CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack(content: {
            if isFaceUp {
                 RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                 RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                 Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        })
    }
}




















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
