//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Dat on 06/02/2025.
//

import SwiftUI

@main
struct MemorizeApp: App {
    @StateObject private var themeManager = ThemeManager()
    @StateObject private var game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
                .environmentObject(themeManager)
        }
    }
}
