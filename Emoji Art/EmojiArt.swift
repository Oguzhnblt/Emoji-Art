//
//  EmojiArt.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import Foundation

struct EmojiArt {
    
    var background: URL?
    
    private(set) var emojis = [Emoji]() // Dışarıdan sadece okuma izni, içerde set edebiliriz.

    private var uniqueEmojiID = 0 // Emojilere verilecek ID'lerin başlangıç noktası
    
    mutating func addEmoji(_ emoji: String, at position: Emoji.Position, size: Int) { // Yeni eklenen emoji
        uniqueEmojiID += 1
        emojis.append(Emoji(
            string: emoji,
            position: position,
            size: size,
            id: uniqueEmojiID
        ))
        
    }
    
    struct Emoji: Identifiable {
        
        let string: String
        var position: Position
        var size: Int
        var id: Int
        
        struct Position {
            
            var x: Int
            var y: Int
        }
    }
}
