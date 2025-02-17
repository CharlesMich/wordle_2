//
//  Guess.swift
//  wordle_2
//
//  Created by Charles Michael on 2/16/25.
//

import SwiftUI

struct Guess {
    let index: Int
    var word = "     "
    var bgColors = [Color](repeating: .systemBackground, count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String] {
        word.map { String($0)}
    }
}
