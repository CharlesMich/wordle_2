//
//  LetterButtonView.swift
//  wordle_2
//
//  Created by Charles Michael on 2/22/25.
//

import SwiftUI

struct LetterButtonView: View {
    @EnvironmentObject var dm: WordleDataModel
    var letter: String
    
    var body: some View {
        Button {
            dm.addToCurrentWord(letter)
        } label: {
            Text(letter)
                .font(.system(size: 20))
                .frame(width: 35, height: 50)
                .background(dm.keyColors[letter])
                .foregroundColor(.primary)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    LetterButtonView(letter: "L").environmentObject(WordleDataModel())
}
