//
//  EmojiArtDocumentView.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import SwiftUI

struct EmojiArtDocumentView: View {
    
    private let emojis = "👻🍎😃🤪☹️🤯🐶🐭🦁🐵🦆🐝🐢🐄🐖🌲🌴🌵🍄🌞🌎🔥🌈🌧️🌨️☁️⛄️⛳️🚗🚙🚓🚲🛺🏍️🚘✈️🛩️🚀🚁🏰🏠❤️💤⛵️"
    
    var body: some View {
        VStack {
            Color(.systemYellow)
            ScrollingEmojis()
        }
    }
}

struct ScrollingEmojis: View {
    
    let emojis: [String]
    
    var body: some View {
        
    }
}

struct EmojiArtDocumentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiArtDocumentView()
    }
}
