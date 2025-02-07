//
//  ContentView.swift
//  Memorize
//
//  Created by Dat on 06/02/2025.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var themeManager: ThemeManager
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                cards.padding(4)
            }
            Spacer()
            themeChoosers
        }
        .padding()
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
            ForEach(0..<themeManager.cardCount, id: \.self) { index in
                CardView(content: themeManager.emojis[index])
                    .aspectRatio(2/3, contentMode: .fit)
            }
        }
        .foregroundColor(.orange)
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
        .tint(theme == themeManager.activeTheme ? .blue : .gray)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ThemeManager())
    }
}
