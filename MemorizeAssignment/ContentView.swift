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
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
