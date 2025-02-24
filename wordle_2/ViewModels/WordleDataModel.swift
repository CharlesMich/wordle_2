//
//  WordleDataModel.swift
//  wordle_2
//
//  Created by Charles Michael on 2/21/25.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    @Published var guesses: [Guess] = []
    
    var keyColors = [String: Color]()
    var selectedWord = ""
    var currentWord = ""
    var tryIndex = 0
    
    init() {
        newGame()
    }
    
    func newGame() {
        populateDefaults()
        selectedWord = Global.commonWords.randomElement()!
        currentWord = ""
    }
    
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
        
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColors[String(char)] = .unused
        }
    }
    
//    MARK: - Game Play
    func addToCurrentWord(_ letter: String) {
        currentWord += letter
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrentWord(){
        
    }
    
    func updateRow() {
        let guessWord = currentWord.padding(toLength: 5, withPad: " ", startingAt: 0)
    }
    
    
}
