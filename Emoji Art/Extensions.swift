//
//  Extensions.swift
//  Emoji Art
//
//  Created by Oğuz on 2.09.2023.
//

import Foundation

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
