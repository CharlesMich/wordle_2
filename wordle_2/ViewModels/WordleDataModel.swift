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
    var inPlay = false
    
    var gameStarted: Bool {
        !currentWord.isEmpty || tryIndex > 0
    }
    
    var disabledKeys: Bool {
        !inPlay || currentWord.count == 5
    }
    
    init() {
        newGame()
    }
    
    func newGame() {
        populateDefaults()
        selectedWord = Global.commonWords.randomElement()!
        currentWord = ""
        inPlay = true
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
        updateRow()
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrentWord(){
        currentWord.removeLast()
        updateRow()
    }
    
    func updateRow() {
        let guessWord = currentWord.padding(toLength: 5, withPad: " ", startingAt: 0)
        guesses[tryIndex].word = guessWord
    }
    
    
}
