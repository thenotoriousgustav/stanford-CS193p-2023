//
//  ContentView.swift
//  Memorize
//
//  Created by Gustam Rheza Mahendra on 29/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: false)
            CardView()
            CardView(isFaceUp: true)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var body: some View{
        let base = RoundedRectangle(cornerRadius: 25)
        ZStack {
            if isFaceUp{
                base.fill(.white)
                base.strokeBorder(lineWidth: 4)
                Text("😅").font(.largeTitle)
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
