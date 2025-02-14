//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Dat on 06/02/2025.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    @EnvironmentObject private var themeManager: ThemeManager
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                cards.padding(4)
            }
            Spacer()
            Button("Shuffle", action: viewModel.shuffle)
            .padding()
            themeChoosers
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 64), spacing: 0)], spacing: 0) {
            ForEach(viewModel.cards.indices, id: \.self) { index in
                CardView(card: viewModel.cards[index])
                    .aspectRatio(2/3, contentMode: .fit)
                    .padding(4)
            }
        }
        .foregroundColor(themeManager.themeColor)
    }
    
    var themeChoosers: some View {
        HStack {
            let themes = themeManager.allThemes
            ForEach(themes.indices, id: \.self) { index in
                themeChooser(for: themes[index])
            }
        }
    }
    
    func themeChooser(for theme: Theme) -> some View {
        Button {
            themeManager.changeTheme(to: theme)
        } label: {
            Label(theme.label, systemImage: theme.symbol)
                .labelStyle(VerticalLabelStyle())
                .imageScale(.large)
                .font(.title2)
        }
        .tint(theme.color)
    }
}

struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
            .environmentObject(ThemeManager())
    }
}
