//
//  ContentView.swift
//  Memorize
//
//  Created by Gustam Rheza Mahendra on 29/04/24.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["👻", "🎃", "🕷️", "😈"] // or Array<String>
    
    var body: some View {
        HStack{
            ForEach(emojis.indices, id: \.self ){ index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View{
        let base = RoundedRectangle(cornerRadius: 25)
        ZStack {
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 4)
                Text(content).font(.largeTitle)
            }
            else{
                base.fill()
            }
        }.onTapGesture {
            print("tap")
            isFaceUp.toggle() // Same as isFaceUp = !isFaceUp
        }
    }
}

#Preview {
    ContentView()
}
