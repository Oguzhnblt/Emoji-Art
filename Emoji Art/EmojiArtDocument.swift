//
//  EmojiArtDocument.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

// MARK: VİEWMODEL

import SwiftUI

class EmojiArtDocument: ObservableObject {
    
    typealias Emoji = EmojiArt.Emoji
    
    private var emojiArt = EmojiArt()      // EmojiArt Modelinde boş bir dize olarak oluşturduğumuz için init()'e ihtiyacımız yok.
    
    var emojis: [Emoji] {
        emojiArt.emojis
    }
    
    var background: URL? {
        emojiArt.background
    }
    
    // MARK: Intent(s)
    
    func setBackground(_ url: URL?) {
        emojiArt.background = url
    }
    
    func addEmoji(_ emoji: String, at position: Emoji.Position, size: CGFloat) {
        emojiArt.addEmoji(emoji, at: position, size: Int(size))
    }
    
}
