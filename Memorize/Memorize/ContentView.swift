//
//  ContentView.swift
//  Memorize
//
//  Created by Dat on 06/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<5) { _ in
                CardView(isFaceUp: true)
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
}

struct CardView: View {
    var isFaceUp = false
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12)
                    .stroke(lineWidth: 4)
                Text("🐣").font(.largeTitle)
            } else {
                RoundedRectangle(cornerRadius: 12)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
