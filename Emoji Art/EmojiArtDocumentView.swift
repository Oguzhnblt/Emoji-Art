//
//  EmojiArtDocumentView.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    private let emojis = "👻🍎😃🤪☹️🤯🐶🐭🦁🐵🦆🐝🐢🐄🐖🌲🌴🌵🍄🌞🌎🔥🌈🌧️🌨️☁️⛄️⛳️🚗🚙🚓🚲🛺🏍️🚘✈️🛩️🚀🚁🏰🏠❤️💤⛵️"
    
    private let paletteEmojiSize: CGFloat = 50
    private let paddingSize: Int = 50
    
    var body: some View {
        VStack(spacing: 0) {
            Color(.systemYellow)
            ScrollingEmojis(emojis)
                .font(.system(size: paletteEmojiSize))
                .padding(.horizontal)
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
            EmojiArtDocumentView()
        }
    }
}
