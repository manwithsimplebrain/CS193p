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
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
        }
    }
}
