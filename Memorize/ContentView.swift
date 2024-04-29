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
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View{
        ZStack( content: {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 25).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25).strokeBorder(lineWidth: 4)
                Text("😅").font(.largeTitle)
            }
            else{
                RoundedRectangle(cornerRadius: 25)
            }
        })
    }
}

#Preview {
    ContentView()
}
