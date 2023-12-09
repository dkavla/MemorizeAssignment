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
    
    @State var cardCount: Int = 4 // keeps track of the card count
    
    var body: some View {
        HStack {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        HStack {
            Button(action: {
                if cardCount > 1 {
                    cardCount -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            .font(.largeTitle)
            Spacer()
            Button(action: {
                if cardCount < emojis.count {
                    cardCount += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            .font(.largeTitle)
        }
        .padding()
    }
    
}


struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var base = RoundedRectangle(cornerRadius: 12)
    var body: some View {
        ZStack {
            if isFaceUp {
                base.fill(.white)
                Text(content)
                base.stroke(lineWidth: 2).foregroundColor(.orange)
            } else {
                base.fill(.orange)
            }
        }.onTapGesture {
            isFaceUp.toggle()
        }
        
    }
}

#Preview {
    ContentView()
}
