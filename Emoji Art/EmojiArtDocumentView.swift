//
//  EmojiArtDocumentView.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    @ObservedObject var document: EmojiArtDocument
    
    private let emojis = "👻🍎😃🤪☹️🤯🐶🐭🦁🐵🦆🐝🐢🐄🐖🌲🌴🌵🍄🌞🌎🔥🌈🌧️🌨️☁️⛄️⛳️🚗🚙🚓🚲🛺🏍️🚘✈️🛩️🚀🚁🏰🏠❤️💤⛵️"
    
    private let paletteEmojiSize: CGFloat = 50
    private let paddingSize: Int = 50
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            documentBody
            
            ScrollingEmojis(emojis)
                .font(.system(size: paletteEmojiSize))
                .padding(.horizontal)
        }
    }
    
    private var documentBody: some View {
        
        ZStack {
            Color.white
            // Image buraya gelecek
            ForEach(document.emojis) { emoji in
                    .font(emoji.font)
                    .position(emoji.position)
            }
            
        }
    }
}

struct ScrollingEmojis: View {
    
    let emojis: [String]
    
    init(_ emojis: String) {
        self.emojis = emojis.uniqued.map(String.init)
    }
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(emojis, id: \.self) { emoji in
                    Text(emoji)
                }
            }
        }
    }
    
    struct EmojiArtDocumentView_Previews: PreviewProvider {
        static var previews: some View {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
