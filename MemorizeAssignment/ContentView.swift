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
        VStack {
            Text("Memorize").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold)
            card
            Spacer()
            cardCountAdjusters
        }
        .padding()
    }
    
    // function that creates a Button with an action and symbol image
    func cardAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
    
    // displays the current amount of cards on screen
    var card: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
            ForEach(0..<cardCount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
    }
    
    // represnts the lower part of the display with buttons
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }
        .font(.largeTitle)
        .imageScale(.large)
    }
    
    // variable that represents the Button for
    // removing cards
    var cardRemover: some View {
        cardAdjuster(by: -1, symbol: "minus.circle")
    }
    
    // variable that represents the Button for
    // adding cards
    var cardAdder: some View {
        cardAdjuster(by: +1, symbol: "plus.circle")
    }
}

// creates the card with emoji inside it
struct CardView: View {
    var content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            var base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                Text(content).font(.largeTitle)
                base.stroke(lineWidth: 2).foregroundColor(.orange)
            }
            // opacity is used to make the Group contents fill if face down
            // and opacity is used to make the fill color transparent if face up
            .opacity(isFaceUp ? 1 : 0)
            base.fill(.orange).opacity(isFaceUp ? 0 : 1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
        
    }
}

#Preview {
    ContentView()
}
