//
//  ContentView.swift
//  MemorizeAssignment
//
//  Created by DK on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    // stores the emojis used for cards
    let emojis: [String] = ["👻", "💀", "🎃", "😈", "🕸️", "🍭", "☠️", "👹", "🧙", "🙀", "🕷️", "😱"]
    
    @State var cardCount: Int = 1 // keeps track of the card count
    
    var body: some View {
        HStack {
            CardView(content: emojis[0])
            CardView(content: emojis[1])
            CardView(content: emojis[2])
            CardView(content: emojis[3])
        }
        .padding()
    }
}


struct CardView: View {
    var content: String
    var isFaceUp = true
    
    @State var base = RoundedRectangle(cornerRadius: 12)
    var body: some View {
        ZStack {
            Text(content)
                .font(.largeTitle)
            base.stroke(lineWidth: 2)
        }
        .foregroundColor(.orange)
        
    }
}

#Preview {
    ContentView()
}
