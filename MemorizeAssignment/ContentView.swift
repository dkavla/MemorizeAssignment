//
//  ContentView.swift
//  MemorizeAssignment
//
//  Created by DK on 12/7/23.
//

import SwiftUI

struct ContentView: View {
    // array with emojis for specific themes
    let christmasTheme: [(String,String)] = [
        ("🎄","🎄"),("🎄","🎄"),("🎄","🎄"),("🎄","🎄"),("🎄","🎄"),("🎄","🎄"),
        ("🌲","🌲"),("🌲","🌲"),("🌲","🌲"),("🌲","🌲"),("🌲","🌲"),("🌲","🌲"),
        ("🎅🏻","🎅🏻"),("🎅🏻","🎅🏻"),("🎅🏻","🎅🏻"),("🎅🏻","🎅🏻"),("🎅🏻","🎅🏻"),("🎅🏻","🎅🏻"),
        ("🇨🇽","🇨🇽"),("🇨🇽","🇨🇽"),("🇨🇽","🇨🇽"),("🇨🇽","🇨🇽"),("🇨🇽","🇨🇽"),("🇨🇽","🇨🇽"),
        ("❄️","❄️"),("❄️","❄️"),("❄️","❄️"),("❄️","❄️"),("❄️","❄️"),("❄️","❄️"),
        ("🍪","🍪"),("🍪","🍪"),("🍪","🍪"),("🍪","🍪"),("🍪","🍪"),("🍪","🍪"),
        ("🤶🏻","🤶🏻"),("🤶🏻","🤶🏻"),("🤶🏻","🤶🏻"),("🤶🏻","🤶🏻"),("🤶🏻","🤶🏻"),("🤶🏻","🤶🏻"),
        ("🧑🏻‍🎄","🧑🏻‍🎄"),("🧑🏻‍🎄","🧑🏻‍🎄"),("🧑🏻‍🎄","🧑🏻‍🎄"),("🧑🏻‍🎄","🧑🏻‍🎄"),("🧑🏻‍🎄","🧑🏻‍🎄"),("🧑🏻‍🎄","🧑🏻‍🎄"),
        ("☃️","☃️"),("☃️","☃️"),("☃️","☃️"),("☃️","☃️"),("☃️","☃️"),("☃️","☃️"),
        ("🛷","🛷"),("🛷","🛷"),("🛷","🛷"),("🛷","🛷"),("🛷","🛷"),("🛷","🛷"),
        ("🌨️","🌨️"),("🌨️","🌨️"),("🌨️","🌨️"),("🌨️","🌨️"),("🌨️","🌨️"),("🌨️","🌨️"),
        ("🧣","🧣"),("🧣","🧣"),("🧣","🧣"),("🧣","🧣"),("🧣","🧣"),("🧣","🧣")
    ]
    
    let halloweenTheme: [(String,String)] = [
        ("👻","👻"),("👻","👻"),("👻","👻"),("👻","👻"),
        ("💀","💀"),("💀","💀"),("💀","💀"),("💀","💀"),
        ("🎃","🎃"),("🎃","🎃"),("🎃","🎃"),("🎃","🎃"),
        ("😈","😈"),("😈","😈"),("😈","😈"),("😈","😈"),
        ("🕸️","🕸️"),("🕸️","🕸️"),("🕸️","🕸️"),("🕸️","🕸️"),
        ("🍭","🍭"),("🍭","🍭"),("🍭","🍭"),("🍭","🍭"),
        ("☠️","☠️"),("☠️","☠️"),("☠️","☠️"),("☠️","☠️"),
        ("👹","👹"),("👹","👹"),("👹","👹"),("👹","👹"),
        ("🧙","🧙"),("🧙","🧙"),("🧙","🧙"),("🧙","🧙"),
        ("🙀","🙀"),("🙀","🙀"),("🙀","🙀"),("🙀","🙀"),
        ("🕷️","🕷️"),("🕷️","🕷️"),("🕷️","🕷️"),("🕷️","🕷️"),
        ("😱","😱"),("😱","😱"),("😱","😱"),("😱","😱")
    ]
    
    let summerTheme: [(String,String)] = [
        ("😎","😎"),("😎","😎"),("😎","😎"),("😎","😎"),("😎","😎"),
        ("☀️","☀️"),("☀️","☀️"),("☀️","☀️"),("☀️","☀️"),("☀️","☀️"),
        ("🌞","🌞"),("🌞","🌞"),("🌞","🌞"),("🌞","🌞"),("🌞","🌞"),
        ("🌻","🌻"),("🌻","🌻"),("🌻","🌻"),("🌻","🌻"),("🌻","🌻"),
        ("👙","👙"),("👙","👙"),("👙","👙"),("👙","👙"),("👙","👙"),
        ("🩳","🩳"),("🩳","🩳"),("🩳","🩳"),("🩳","🩳"),("🩳","🩳"),
        ("🧴","🧴"),("🧴","🧴"),("🧴","🧴"),("🧴","🧴"),("🧴","🧴"),
        ("⛱️","⛱️"),("⛱️","⛱️"),("⛱️","⛱️"),("⛱️","⛱️"),("⛱️","⛱️"),
        ("🍉","🍉"),("🍉","🍉"),("🍉","🍉"),("🍉","🍉"),("🍉","🍉"),
        ("🩲","🩲"),("🩲","🩲"),("🩲","🩲"),("🩲","🩲"),("🩲","🩲"),
        ("🩱","🩱"),("🩱","🩱"),("🩱","🩱"),("🩱","🩱"),("🩱","🩱"),
        ("🕶️","🕶️"),("🕶️","🕶️"),("🕶️","🕶️"),("🕶️","🕶️"),("🕶️","🕶️")
    ]
    
    @State var emojis: [String] = []

    
    @State var cardCount: Int = 0 // keeps track of the card count
    
    var body: some View {
        VStack {
            Text("Memorize").font(.largeTitle).foregroundColor(.blue).fontWeight(.bold)
            // allows us to scroll the cards view
            ScrollView {
                card
            }
            Spacer()
            cardThemeAdjusters
        }
        .padding()
    }
    
    // function that creates a Button with an action and symbol image
    /*
    func cardAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        })
        .disabled(cardCount + offset < 1 || cardCount + offset > emojis.count)
    }
     */
    

    // displays the current amount of cards on screen
    var card: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 70))]) {
            ForEach(0..<emojis.count, id: \.self) { index in
                CardView(content: emojis[index])
                    .aspectRatio(2/3, contentMode: .fill) // fills the screen and gives the cards a 2:3 size ratio
            }
        }
        .foregroundColor(.orange)
    }
    
    // represnts the lower part of the display with buttons
    var cardThemeAdjusters: some View {
        HStack {
            themeView
        }
    }
     
    
    // generates a random index position from the theme array of pairs
    func getRandomIndex(of theme: [(String, String)]) -> Int {
        return Int.random(in: 0..<theme.count)
    }
    
    // variable that represents the Button for
    // removing cards
    /*
    var cardRemover: some View {
        cardAdjuster(by: -1, symbol: "minus.circle")
            .font(.largeTitle)
    }
     */
    
    // variable that represents the Button for
    // adding cards
    /*
    var cardAdder: some View {
        cardAdjuster(by: +1, symbol: "plus.circle")
            .font(.largeTitle)
    }
     */
    
    // creates a button for each theme with a array and symbol passed in
    func setTheme(to theme: [(String,String)], name: String, symbol: String) -> some View {
        Button(action: {
            emojis = [] // reset to empty array
            cardCount = 0 // reset cardCount to 0
            
            var temp: [(String, String)] = theme.shuffled()
            var idx: Int
            
            while cardCount < 16{
                idx = getRandomIndex(of: temp)
                
                // adds the two items of a pair to emojis list
                emojis.append(temp[idx].0)
                emojis.append(temp[idx].1)
                cardCount += 2
                // remove the used pair from temp
                temp.remove(at: idx)
            }
            emojis.shuffle() // shuffle the array so that the cards are random
        }, label: {
            VStack {
                Image(systemName: symbol)
                Text(name)
            }
        })
    }
    
    // displays the three theme buttons horizontally
    var themeView: some View {
        HStack {
            Spacer()
            christmas
            Spacer()
            halloween
            Spacer()
            summer
            Spacer()
        }
        .imageScale(.large)
    }
    
    var christmas: some View {
        setTheme(to: christmasTheme, name: "Christmas", symbol: "snowflake")
    }
    
    var halloween: some View {
        setTheme(to: halloweenTheme, name: "Halloween", symbol: "leaf.fill")
    }
    
    var summer: some View {
        setTheme(to: summerTheme, name: "Summer", symbol: "sun.max.fill")
    }
}

// creates the card with emoji inside it
struct CardView: View {
    var content: String
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            Group {
                base.fill(.white)
                Text(content).font(.largeTitle)
                base.stroke(lineWidth: 2).foregroundColor(.red)
            }
            // opacity is used to make the Group contents fill if face down
            // and opacity is used to make the fill color transparent if face up
            .opacity(isFaceUp ? 1 : 0)
            base.fill(.red).opacity(isFaceUp ? 0 : 1)
        }.onTapGesture {
            isFaceUp.toggle()
        }
    }
}

#Preview {
    ContentView()
}
