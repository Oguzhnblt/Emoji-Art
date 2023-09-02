//
//  Extensions.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import SwiftUI

typealias CGOffset = CGSize

// MARK: STRING EXTENSION

extension String {
    var uniqued: String {
        reduce(into: "") { sofar, element in
            if !sofar.contains(element) {
                sofar.append(element)
            }
        }
    }
}

// MARK: CGRect EXTENSION

extension CGRect {
    var center: CGPoint {
        CGPoint(x: midX, y:midY)
    }
    init(center: CGPoint, size: CGSize) {
        self.init(origin: CGPoint(x: center.x-size.width/2, y: center.y-size.height/2), size: size)
    }
}

// MARK: CGOffset EXTENSION

extension CGOffset {
    static func +(lhs: CGOffset, rhs: CGOffset) -> CGOffset {
        CGOffset(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    static func +=(lhs: inout CGOffset, rhs: CGOffset) {
        lhs = lhs + rhs
    }
}

// MARK: Font EXTENSION

extension EmojiArt.Emoji {
    var font: Font {
        Font.system(size: CGFloat(size))
    }
}

// MARK: Position EXTENSION

extension EmojiArt.Emoji.Position {
    func `in`(_ geometry: GeometryProxy) -> CGPoint {
        let center = geometry.frame(in: .local).center
        return CGPoint(x: center.x + CGFloat(x), y: center.y - CGFloat(y))
    }
}
