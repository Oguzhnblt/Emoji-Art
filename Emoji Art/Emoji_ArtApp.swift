//
//  Emoji_ArtApp.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import SwiftUI

@main
struct Emoji_ArtApp: App {
    
    @StateObject var defaultDocument = EmojiArtDocument()
    
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
